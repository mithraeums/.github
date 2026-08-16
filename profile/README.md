<p align="center">
  <a href="https://mithraeums.github.io">
    <img src="https://mithraeums.github.io/assets/banner-mithraeum-dark.svg" alt="mithraeum" width="100%"/>
  </a>
</p>

<p align="center">
  <em>Local-first C tools. No frameworks. No telemetry. No package manager.</em>
</p>

<p align="center">
  <sub>
    <a href="https://mithraeums.github.io">site</a> &nbsp;·&nbsp;
    <a href="#projects">projects</a> &nbsp;·&nbsp;
    <a href="#philosophy">philosophy</a> &nbsp;·&nbsp;
    <a href="#install">install</a>
  </sub>
</p>

<br>

<p align="center"><sub><b>—— I ——</b></sub></p>

## Project Hako 箱
<table>
  <tr>
    <td width="120" align="center"><sub>— 01 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako">hako</a> Local model family + native C engine</b><br>
      <sub>From-scratch inference runtime — own loader, Q4_K/Q6_K + int8 kernels, BPE. No llama.cpp, no ollama. Qwen2.5-Coder bases + a hako SYSTEM wrap, fine-tunes queued. Live today:<br>
      <code>hako-sho</code> — mini · 3B · <a href="https://huggingface.co/mithraeum/hako-sho">🤗 weights</a><br>
      <code>hako-koi</code> — mid-small · 7B · <a href="https://huggingface.co/mithraeum/hako-koi">🤗 weights</a><br>
      koi (mid · 14B/32B) queued, samurai (max · 50B+) reserved.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— 02 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako-code">hako-code</a> Standalone Agent</b><br>
      <sub>Same C99 stack as the editor. Local hako models by default, plus 13 cloud providers (Anthropic OAuth, Copilot, GH Models, OpenRouter, OpenAI-compat). Tool-use, sessions, skills, sha-verified self-update.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— 03 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako-edit">hako-edit</a> Modal terminal editor</b><br>
      <sub>Single-file C99. vim-flavored. Splits, themes, mouse, UTF-8. Embeds the <code>hako</code> agent in a callable pane.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— 04 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako-studio">hako-studio</a> The agent in a browser · <a href="https://hako.mithraeum.studio">hako.mithraeum.studio</a></b><br>
      <sub>The same <code>hako.c</code>, compiled to WebAssembly — so the agent runs <b>on your own device, in a tab</b>. Open it hosted with nothing installed, run the container, or serve it from the binary with <code>hako --serve</code>: one piece of software in three shapes. No backend, no database, no account; your key goes straight to the provider and your work stays on your machine. <code>--lan --token</code> puts it on your phone.</sub>
    </td>
  </tr>
</table>

> <b><a href="https://github.com/mithraeums/skills">skills</a></b><br>
      <sub>Markdown behaviors for hako-code and hako-edit. Drop a folder, name it, the agent loads it. No runtime.</sub>

<br>

<p align="center"><sub><b>—— II ——</b></sub></p>


## Philosophy

- **C99 / C17.** libc + pthread. libcurl as subprocess where needed. That's the stack.
- **Single-file where reasonable.** No premature splitting. No build matrices to maintain.
- **Manual test matrices, ASan + valgrind as ship gates.** No test framework runtime.
- **No telemetry. No analytics. No daemon.** The binary does the thing and exits.
- **Releases over package managers.** Signed binaries, sha256 sidecars, `--update` does the rest.
- **Local-first models.** Run on your device. Offline. Forever.

<br>

<p align="center"><sub><b>—— III ——</b></sub></p>

## Install

```sh
# hakm · the models suite — native C engine, no ollama, no llama.cpp
git clone https://github.com/mithraeums/hako && cd hako && make

# hako · the agent
curl -fsSL https://mithraeums.github.io/hako.sh | sh

# hake · the editor
curl -fsSL https://mithraeums.github.io/hake.sh | sh

# hako studio · the agent in a browser — nothing to install
open https://hako.mithraeum.studio

# ...or serve it yourself, with real files and a shell
hako --serve --lan --token

```

<br>

<p align="center">
  <sub><code>mithraeum</code> — an underground chamber for the rites of Mithras. We build small rooms.</sub>
</p>

