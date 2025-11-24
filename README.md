# Home Dotfiles

This repository contains my personal configuration files (dotfiles) for the Zsh shell and related tools.

## Contents

- `.zshrc` — Main Zsh configuration
- `.zprofile` — Environment and login shell settings
- `.zsh_aliases` — Custom aliases for development, system, and utilities
- `.zshenv` — Private environment variables (not tracked by git)
- `install.sh` — Script to install dotfiles into your home directory

## Installation

To install the dotfiles into your home directory, run:

```sh
./install.sh
```

The script will copy `.zshrc`, `.zprofile`, `.zsh_aliases`, and `.zshenv` (if present) to your `$HOME`.

> **Note:** `.zshenv` is ignored by git (see `.gitignore`) because it may contain sensitive variables.

## Apply Changes

After installation, apply the changes by running:

```sh
source ~/.zshrc
```

Or simply restart your terminal.

## Recommended Tools

- [Zsh](https://www.zsh.org/)
- [Homebrew](https://brew.sh/) (for macOS)
- [DDEV](https://ddev.com/) (for web development)
- [NVM](https://github.com/nvm-sh/nvm) (Node Version Manager)

## Customization

You can edit aliases in `.zsh_aliases` and add private variables to `.zshenv` (not tracked by git).

## License

These dotfiles are provided as-is. Feel free to use and modify them for your personal needs.