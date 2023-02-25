# Visual Studio Code

## Setup

1. Verify the correct paths in the script
2. Open the console as an admin
3. Run `make setup`
4. Install extensions (see below)

The script creates a symbolic link of the preferences to the dotfiles in this repo. A copy of the preferences is saved in the `temp` folder.

### Manage extensions

#### Keep track of installed extensions

1. In a console, navigate to the `dotfiles/vscode` directory
2. Run `make sync-extensions`

This will generate an `extensions.txt` file.

#### Install extensions

1. In a console, navigate to the `dotfiles/vscode` directory
2. Run `make install-extensions`

You may need to manually enable the extensions in VS Code.

## Cheatsheet

- Custom snippets are defined in the `vscode/User/snippets` directory of your dotfiles
