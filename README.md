<!--
  Org profile README for github.com/mithraeums
  Place this at:  github.com/mithraeums/.github  →  profile/README.md
-->

<p align="center">
  <a href="https://mithraeums.github.io">
    <img src="https://mithraeums.github.io/assets/banner-org-dark.svg" alt="mithraeum — tools cut from one stone" width="100%"/>
  </a>
</p>

<p align="center">
  <em>C-first tools. No frameworks. No telemetry. No package manager.</em>
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

## Projects

<table>
  <tr>
    <td width="120" align="center"><sub>— 01 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hako">hako</a></b> &nbsp;<code>箱</code><br>
      <sub>Modal terminal editor. Single-file C99. vim-flavored. Splits, themes, mouse, UTF-8. AI panel (Rei) optional.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— 02 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hakoCLAW">hakoCLAW</a></b> &nbsp;<code>hakoc</code><br>
      <sub>Standalone AI agent CLI. Same code that powers Rei inside hako. Anthropic, OpenAI-compat, Ollama. Tool-use, sessions, skills.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— 03 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/skills">skills</a></b><br>
      <sub>Markdown behaviors for hako and hakoCLAW. Drop a folder, name it, the agent loads it. No runtime.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— 04 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/hakoAI">hakoAI</a></b> &nbsp;<sub>(in progress)</sub><br>
      <sub>Local-first models. <code>koi</code> is first — ~300M params, INT4, runs on iSh. Python training, C17 inference engine.</sub>
    </td>
  </tr>
  <tr>
    <td align="center"><sub>— 05 —</sub></td>
    <td>
      <b><a href="https://github.com/mithraeums/mithraeums.github.io">mithraeums.github.io</a></b><br>
      <sub>Project site, install proxy, asset host.</sub>
    </td>
  </tr>
</table>

<br>

<p align="center"><sub><b>—— II ——</b></sub></p>

## Install

```sh
# hakoCLAW agent (macOS / Linux / FreeBSD / WSL)
curl -fsSL https://mithraeums.github.io/install.sh | sh
```

```sh
# hako editor — clone + make
git clone https://github.com/mithraeums/hako
cd hako && make
```

<br>

<p align="center"><sub><b>—— III ——</b></sub></p>

## Philosophy

- **C99 / C17.** libc + pthread. libcurl as subprocess where needed. That's the stack.
- **Single-file where reasonable.** No premature splitting. No build matrices to maintain.
- **Manual test matrices, ASan + valgrind as ship gates.** No test framework runtime.
- **No telemetry. No analytics. No daemon.** The binary does the thing and exits.
- **Releases over package managers.** Signed binaries, sha256 sidecars, `--update` does the rest.

<br>

<p align="center">
  <sub><code>mithraeum</code> — an underground chamber for the rites of Mithras. We build small rooms.</sub>
</p>
