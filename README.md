# tslime-input.vim

This plugin is a simple convenience wrapper around tslime to enable repeat
commands to be run from vim.

## Commands

Three functions are made available:

`TslimeAskForCommand`

This function prompts for user input the first time it's run, and on subsequent
runs it repeats the last command. 

Some simple shell completion is available but only for binaries in the user's
PATH at the moment.

`TslimeResetLastCommand`

This resets the previously last run command if set. This also calls `TslimeResetTslimeSettings`.

`TslimeResetTslimeSettings`

This function resets the internal tslime settings variable, which contains the tmux session/window/pane to use.

## Key mappings

The user is responsible for setting their own keyboard mappings, but an example
can be

``` vim
nmap <leader>a :call TslimeAskForCommand()<CR>
nmap <leader>R :call TslimeResetLastCommand()<CR>
```
