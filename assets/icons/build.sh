#!/bin/sh
# Rasterise the icon masters into every place the suite needs them.
#
#   sh build.sh            # all products
#   sh build.sh studio     # one
#
# Needs rsvg-convert (brew install librsvg). iconutil/sips are macOS-stock and
# only used for .icns; .ico needs ImageMagick or Pillow and is skipped without both.
set -e
cd "$(dirname "$0")"

python3 make-icons.py

# product : destination dir : basename        (empty dir = masters only)
targets='mithraeum:../:mithraeum-avatar
hake:../../hako-edit/icon:hake
hako:../../hako-code/icon:hako
hakm::hakm
studio:../../hako-studio:icon'

png() { rsvg-convert -w "$2" -h "$2" "$1.svg" -o "$3"; }

for row in $targets; do
	name=$(echo "$row" | cut -d: -f1)
	dir=$(echo "$row"  | cut -d: -f2)
	base=$(echo "$row" | cut -d: -f3)
	[ -n "$1" ] && [ "$1" != "$name" ] && continue

	png "$name" 1024 "$name-1024.png"
	png "$name" 180  "$name-180.png"
	echo "rendered $name (1024, 180)"

	[ -z "$dir" ] && continue
	mkdir -p "$dir"

	if [ "$base" = "icon" ]; then
		# hako-studio wants exactly the one size the binary embeds.
		cp "$name-180.png" "$dir/icon-180.png"
		cp "$name.svg"     "$dir/icon.svg"
		echo "  -> $dir/icon-180.png (run 'make embed' + rebuild the agent)"
		continue
	fi

	cp "$name.svg" "$dir/$base.svg"
	png "$name" 512 "$dir/$base.png"

	# .icns for macOS, from a stock iconset.
	if command -v iconutil >/dev/null 2>&1; then
		set=$(mktemp -d)/$base.iconset
		mkdir -p "$set"
		for sz in 16 32 128 256 512; do
			png "$name" "$sz"           "$set/icon_${sz}x${sz}.png"
			png "$name" "$((sz * 2))"   "$set/icon_${sz}x${sz}@2x.png"
		done
		iconutil -c icns "$set" -o "$dir/$base.icns" 2>/dev/null \
			&& echo "  -> $dir/$base.icns" || echo "  (icns failed)"
	fi

	png "$name" 256 "$dir/.ico-src.png"
	if command -v magick >/dev/null 2>&1; then
		magick "$dir/.ico-src.png" -define icon:auto-resize=256,128,64,48,32,16 "$dir/$base.ico" \
			&& echo "  -> $dir/$base.ico"
	elif python3 -c 'import PIL' 2>/dev/null; then
		python3 -c 'import sys; from PIL import Image; Image.open(sys.argv[1]).save(sys.argv[2], sizes=[(s, s) for s in (256, 128, 64, 48, 32, 16)])' \
			"$dir/.ico-src.png" "$dir/$base.ico" && echo "  -> $dir/$base.ico"
	else
		echo "  (.ico skipped — needs ImageMagick or Pillow; the old one still ships)"
	fi
	rm -f "$dir/.ico-src.png"
	echo "  -> $dir/$base.{svg,png}"
done

rm -f ./*-1024.png ./*-180.png
echo "done."
