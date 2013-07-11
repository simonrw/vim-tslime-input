" tslime-input.vim.     Repeating commands with tslime
" Maintainer:           S. Walker <s.r.walker101 [at] gmail [dot] com>
" Version:              0.1

function! AskForCommand()

    if !exists("g:previous_tslime_command")
        call inputsave()
        let command = input("Command to run: ", "", "shellcmd")
        call inputrestore()
        let g:previous_tslime_command = command
    else
        let command = g:previous_tslime_command
    endif

    call Send_to_Tmux(command . "\n")
endfunction

function! ResetLastCommand()

    if exists("g:previous_tslime_command")
        unlet g:previous_tslime_command
    endif

endfunction
