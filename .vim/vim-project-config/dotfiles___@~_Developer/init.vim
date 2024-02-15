""""""""""""""""""""""""""""""""""""""""""""""
" Project:      dotfiles
" When:         after session is loaded
" Variables:    $vim_project, $vim_project_config
""""""""""""""""""""""""""""""""""""""""""""""

" Local config. Those of list types extend global config. Others override
" let g:vim_project_local_config = {
"   \'include': ['./'],
"   \'exclude': ['.git', 'node_modules', '.DS_Store'],
"   \'tasks': [
"     \{
"       \'name': 'start',
"       \'cmd': 'npm start'
"     \},
"   \],
"   \'project_root': './',
"   \'use_session': 0,
"   \'open_root_when_use_session': 0,
"   \'check_branch_when_use_session': 0,
"   \}

" file_mappings extend global config
" let g:vim_project_local_config.file_mappings = {
"   \'r': 'README.md',
"   \'l': ['html', 'css']
"   \}

let g:vim_project_local_config = {
\}
let g:vim_project_local_config.file_mappings = {
\}
