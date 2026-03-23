# Dotfiles

This repository contains terminal and shell-related configuration files that can be applied individually.

- [ghostty/config.ghostty](ghostty/config.ghostty): Ghostty terminal config with custom font settings, Catppuccin themes, translucent macOS window styling, shell integration, and custom keybindings.
- [fish/config.fish](fish/config.fish): Fish shell startup config that initializes Starship, adds Bun to `PATH`, defines a few Bun-based aliases, and appends an Obsidian app binary path to `PATH`.
- [starship.toml](starship.toml): a custom [Starship](https://starship.rs/) prompt with a gruvbox-style palette, OS and user segments, Git status, language runtimes, Docker/Conda/Pixi context, and a clock.

## Files

### `ghostty/config.ghostty`

This Ghostty config does the following:

- Sets `Monaspace Neon NF` as the terminal font with a medium style and larger cell height
- Uses Catppuccin Latte for light mode and Catppuccin Mocha for dark mode
- Enables mouse hide while typing
- Applies translucent macOS window styling with blur and a transparent title bar
- Enables shell integration features for SSH terminfo
- Checks for Ghostty updates automatically
- Adds custom keybindings for `alt+backspace` and `super+enter`

Expected install location:

```sh
~/.config/ghostty/config
```

### `fish/config.fish`

This Fish config does the following:

- Initializes Starship for interactive Fish sessions
- Exposes Bun from the standard install location in the user's home directory

- Adds aliases:

```sh
ccusage-codex -> bunx @ccusage/codex@latest
ccusage       -> bunx ccusage
codex         -> bun run codex
```

- Adds Obsidian's macOS app binary to `PATH`

Expected install location:

```sh
~/.config/fish/config.fish
```

### `starship.toml`

This prompt configuration includes:

- OS icon + username
- Current directory with icon substitutions
- Git branch and status
- Runtime indicators for C, C++, Rust, Go, Node.js, PHP, Java, Kotlin, Haskell, and Python
- Docker, Conda, and Pixi environments
- Current time
- Separate prompt symbols for normal, error, and Vim modes

Expected install location:

```sh
~/.config/starship.toml
```

## Prerequisites

Install these first if you want the full setup to work:

- [Ghostty](https://ghostty.org/)
- [Fish shell](https://fishshell.com/)
- [Starship](https://starship.rs/)
- [Bun](https://bun.sh/) for the Bun-related aliases
- Obsidian for the Obsidian `PATH` entry

## Install

Download the Ghostty config:

```sh
mkdir -p ~/.config/ghostty && \
curl -fsSL https://raw.githubusercontent.com/ankitgoyalio/dotfiles/main/ghostty/config.ghostty -o ~/.config/ghostty/config.ghostty
```

Download the Fish config:

```sh
mkdir -p ~/.config/fish && \
curl -fsSL https://raw.githubusercontent.com/ankitgoyalio/dotfiles/main/fish/config.fish -o ~/.config/fish/config.fish
```

Download the Starship config:

```sh
mkdir -p ~/.config && \
curl -fsSL https://raw.githubusercontent.com/ankitgoyalio/dotfiles/main/starship.toml -o ~/.config/starship.toml
```

If you prefer `wget`, use the same per-file pattern:

```sh
wget -qO ~/.config/ghostty/config https://raw.githubusercontent.com/ankitgoyalio/dotfiles/main/ghostty/config.ghostty
```

```sh
wget -qO ~/.config/fish/config.fish https://raw.githubusercontent.com/ankitgoyalio/dotfiles/main/fish/config.fish
```

```sh
wget -qO ~/.config/starship.toml https://raw.githubusercontent.com/ankitgoyalio/dotfiles/main/starship.toml
```

## Apply Changes

Restart your Fish session to reload both `config.fish` and `starship.toml`:

```sh
exec fish
```

Or reload only the Fish config inside an existing Fish session:

```fish
source ~/.config/fish/config.fish
```

Restart Ghostty to pick up changes to `~/.config/ghostty/config`.

## Notes

- `ghostty/config.ghostty` uses macOS-oriented appearance settings and expects the `Monaspace Neon NF` font to be installed for the intended look.
- `fish/config.fish` may contain machine-specific paths. If your local app install locations differ, update those lines after downloading.
- The prompt uses Nerd Font glyphs. Install a Nerd Font if icons do not render correctly.
- The file install commands pull from the repository's `main` branch, so the same commands continue to work as those tracked configs change over time.
