" asynctasks.vim
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_term_pos = 'tab'
let g:asynctasks_term_reuse = 1
" let g:asynctasks_system = 'macos'
" let g:asynctasks_extra_config = [
"    \ '~/.config/nvim/global_tasks.ini',
"    \ ]
"
nnoremap  [asynctask_key]   <Nop>
nmap      r [asynctask_key]
noremap <silent>rr :AsyncTask file-run<cr>
noremap <silent>rb :AsyncTask file-build<cr>
noremap <silent>rpi :AsyncTask project-init<cr>
noremap <silent>rpr :AsyncTask project-run<cr>
noremap <silent>rpb :AsyncTask project-build<cr>

set nowrap "不加换行符，折行显示 "
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
