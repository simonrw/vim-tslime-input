# tslime-input.vim

This plugin is a simple convenience wrapper around tslime to enable repeat
commands to be run from vim.

I tried vimux for running commands in a tmux window, but I like the way tslime prompts for user input on commands. I also liked the way you could repeat commands with vimux. I've created this plugin to merge the two functionalities I liked from both plugins, and now my workflow is very simple.

## Example

I have the two important functions mapped to `<leader>a` for running the command, and `<leader>R` for resetting the behaviour. I usually have a narrow pane open to the right of my vim window for running things. I can quickly set this up by running

* `<leader>a`
* inputting my command and watching my tests run, or my main script to run
* calling `<leader>a` as many times as I want to run the same command again
* should I need a new command, I run `<leader>R` `<leader>a` and input my new command.

## Commands

Three functions are made available:

`TslimeAskForCommand`

This function prompts for user input the first time it's run, and on subsequent
runs it repeats the last command. 

The command autocompletes any previous commands run.

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
