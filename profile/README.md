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
      <b><a href="https://github.com/mithraeums/hako">hako</a> Local model family</b><br>
      <sub>Qwen2.5-Coder bases + a hako SYSTEM wrap, fine-tunes queued. Live today:<br>
      <code>hako-sho-stock</code> — mini · 3B<br>
      <code>hako-koi-mini-stock</code> — mid-small · 7B<br>
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
# hakm · the models suite (requires ollama currently, working on a runner)
curl -fsSL https://mithraeums.github.io/hakm.sh | sh

# hako · the agent
curl -fsSL https://mithraeums.github.io/hako.sh | sh

# hake · the editor
curl -fsSL https://mithraeums.github.io/hake.sh | sh

```

<br>

<p align="center">
  <sub><code>mithraeum</code> — an underground chamber for the rites of Mithras. We build small rooms.</sub>
</p>

