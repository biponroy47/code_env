# Overview

This script automates the process for setting up my optimal code environment for web development. The setup is of my own preference but can be customized by applying your own modifications (follow the [AppleScript Language documentation](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html))

# Configuration

Note: Script is setup for MacBook Air M2 or displays of the same size.

- Chrome (left half of screen)
  - to view live web server, development builds, databases
- Safari (left half of screen)
  - to view documentation, github
- Visual Studio Code (right half of screen)
  - to code duh
- Terminal (floating center window)
  - to run (basic/git) commmands

# Usage

Use `osascript code_env.scpt` to run the script.

Additionally you may add the script to your terminal configuration file so you can run it with a simple command.

For zsh users, add `alias webdev='osascript ~/PATH/code_env.scpt'` in your .zshrc file (replacing PATH with the directory containing the script) and run `webdev` after restarting the terminal.
