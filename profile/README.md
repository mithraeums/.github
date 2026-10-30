<p align="center">
  <a href="https://mithraeums.github.io">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://mithraeums.github.io/assets/banner-mithraeum-night.png"/>
      <img src="https://mithraeums.github.io/assets/banner-mithraeum.png" alt="mithraeum" width="100%"/>
    </picture>
  </a>
</p>

<p align="center">
  <em>Local-first C tools. No frameworks. No telemetry. No package manager.</em>
</p>

<p align="center">
  <sub>
    <a href="https://mithraeums.github.io">site</a> &nbsp;·&nbsp;
    <a href="#project-hako-箱">projects</a> &nbsp;·&nbsp;
    <a href="#philosophy">philosophy</a> &nbsp;·&nbsp;
    <a href="#install">install</a> &nbsp;·&nbsp;
    <a href="https://mithraeums.github.io/#releases">releases</a>
  </sub>
</p>

<br>

<p align="center"><sub><b>—— I ——</b></sub></p>

## Project Hako 箱

One agent, one editor, one engine, one browser workspace — each in a single file of C (or
HTML), each building with nothing but a compiler. Versions and release notes live with each
repo; the [site](https://mithraeums.github.io/#releases) lists them all.

<table>
  <tr>
    <td width="120" align="center"><sub>— I —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako-edit">hako-edit</a> · <code>hake</code> · modal terminal editor</b><br>
      <sub>Single-file C99, vim-flavored. Splits, a file explorer, a runner pane for the compile/fix loop, the suite's themes, mouse, UTF-8 — and the <code>hako</code> agent in a pane beside your code.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— II —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako-code">hako-code</a> · <code>hako</code> · standalone agent</b><br>
      <sub>A coding agent in one C file. Local hako models by default, or the cloud provider you choose — Anthropic, Copilot, GitHub Models, OpenRouter, Gemini and the OpenAI-compatible rest. Tools behind approval, sessions, <a href="https://agentskills.io">Agent Skills</a>, MCP, self-update. <b>Runs where nothing else installs</b> — one binary, libc and a shell, so it works on a phone under iSh, editing real files.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— III —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako">hako</a> · <code>hakm</code> · native C engine + model family</b><br>
      <sub>From-scratch inference: own loader, k-quant + int8 kernels, BPE. No llama.cpp, no ollama. Runs the hako models, on <a href="https://huggingface.co/mithraeum">🤗 huggingface.co/mithraeum</a>:<br>
      <code>hako-sho</code> — 3B · <code>hako-koi</code> — 7B · larger fine-tunes to follow.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— IV —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako-studio">hako-studio</a> · the agent in a browser · <a href="https://hako.mithraeum.studio">hako.mithraeum.studio</a></b><br>
      <sub>The same <code>hako.c</code>, compiled to WebAssembly — so the agent runs <b>on your own device, in a tab</b>. Open it hosted with nothing installed, run the container, or serve it from the binary with <code>hako --serve</code>. No backend, no database, no account; your key goes straight to the provider and your work stays on your machine.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— V —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/skills">skills</a> · behaviors</b><br>
      <sub>Markdown skills in the open Agent Skills format, for the whole suite and any agent that reads them. Drop a folder, name it, the agent loads it. No runtime.</sub>
    </td>
  </tr>
</table>

<br>

<p align="center"><sub><b>—— II ——</b></sub></p>

## Philosophy

- **C99 / C17.** libc + pthread. `curl` as a subprocess where needed. That's the stack.
- **Single-file where reasonable.** No premature splitting.
- **Tests that need nothing.** Every repo has a `make test` with no model, no network and no
  credentials; ASan is a ship gate.
- **No telemetry. No analytics. No daemon.** The binary does the thing and exits.
- **Releases over package managers.** Release binaries with sha256 sidecars, a source build
  where there is none, and `--update` does the rest.
- **Local-first models.** Run on your device. Offline. Forever.

<br>

<p align="center"><sub><b>—— III ——</b></sub></p>

## Install

```sh
# everything — a menu, or  sh -s -- --all
curl -fsSL https://mithraeums.github.io/install.sh | sh

# or one at a time
curl -fsSL https://mithraeums.github.io/hako.sh | sh     # hako · the agent
curl -fsSL https://mithraeums.github.io/hake.sh | sh     # hake · the editor
curl -fsSL https://mithraeums.github.io/hakm.sh | sh     # hakm · the engine
hakm pull hako-sho                                       # a local model

# hako studio · the agent in a browser — nothing to install
open https://hako.mithraeum.studio

# ...or serve it yourself, with real files and a shell
hako --serve --lan --token
```

<br>

<p align="center">
  <sub><code>mithraeum</code> — an underground chamber for the rites of Mithras. We build small rooms.</sub>
</p>
