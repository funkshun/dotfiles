"  _         _  _            _            
" (_)       (_)| |          (_)           
"  _  _ __   _ | |_  __   __ _  _ __ ___  
" | || '_ \ | || __| \ \ / /| || '_ ` _ \ 
" | || | | || || |_  _\ V / | || | | | | |
" |_||_| |_||_| \__|(_)\_/  |_||_| |_| |_|
"
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'YouCompleteMe')
"call add(g:pathogen_disabled, 'Supertab')
execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme wal
:set fo+=t
:set number
let g:deoplete#enable_at_startup=1
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
"" set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
:set t_Co=256
:set tabstop=4 
:set nocompatible
 :filetype
 :set expandtab ts=4 sw=4 ai
 let g:indentLine_color_term = 222
 let g:indentLine_color_gui = '#222222'
 let g:indentLine_char = '|'
 let g:airline_powerline_fonts=1
 " let g:UltiSnipsExpandTrigger="k" 
 "autocmd vimenter * NERDTree 
 map <C-n> :NERDTreeToggle<CR>
":colorscheme solarized
":set background=dark
"let g:ycm_global_ycm_extra_con
"
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:neomake_open_list=2
let g:neomake_c_enabled_makers=['gcc']
let g:neomake_c_gcc_maker = {'exe': 'gcc', 'args': []}
autocmd! BufWritePost * Neomake
autocmd! BufWritePost *.tex !pdflatex --interaction=batchmode %
