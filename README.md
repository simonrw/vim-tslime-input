# tslime-input.vim

This plugin is a simple convenience wrapper around tslime to enable repeat
commands to be run from vim.

## Commands

Two functions are made available:

### `AskForCommand`

This function prompts for user input the first time it's run, and on subsequent
runs it repeats the last command. 

Some simple shell completion is available but only for binaries in the user's
PATH at the moment.

### `ResetLastCommand`

This resets the previously last run command if set.

## Key mappings

The user is responsible for setting their own keyboard mappings, but an example
can be

``` vim
nmap <leader>a :call AskForCommand()<CR>
nmap <leader>R :call ResetLastCommand()<CR>
```
