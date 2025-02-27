# dotfiles

personal dotfiles managed by [chezmoi](https://www.chezmoi.io/).

## Usage

Install `chezmoi` first and execute:

```bash
chezmoi init --apply oliverdding
```

Or if the system package manager doesn't contain `chezmoi` so you would like to install it's binary directly from web:

```bash
BINDIR="$HOME/.local/bin" sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply oliverdding
```

## Font configuration

See also: [用 fontconfig 治理 Linux 中的字体](https://catcat.cc/post/2021-03-07/)
