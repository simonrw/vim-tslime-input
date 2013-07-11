" tslime-input.vim.     Repeating commands with tslime
" Maintainer:           S. Walker <s.r.walker101 [at] gmail [dot] com>
" Version:              0.3.1
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

function! TslimeAskForCommand()

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

function! TslimeResetLastCommand()

    if exists("g:previous_tslime_command")
        unlet g:previous_tslime_command
    endif

    if exists("g:tslime")
        unlet g:tslime
    endif

endfunction
