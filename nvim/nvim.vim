version 6.0
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <C-W> u
inoremap <C-U> u
nnoremap  h
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap  i
nnoremap  <Cmd>tabnew
nmap  d
nnoremap  ft <Cmd>NERDTreeToggle
nnoremap  = =
nnoremap  sx :close
nnoremap  sh :split
nnoremap  sv :vs
nnoremap  q c
nnoremap  dws :let _s=@/|:%s/\s\+$//e|:let @/=_s|:nohl
nnoremap  es :source ~/.config/nvim/init.vim
nnoremap  el :e ~/.config/nvim/init.lua
nnoremap  ? :nohl
nnoremap  p "+p
nnoremap  gd <Cmd>:Git diff
nnoremap  gps <Cmd>:Git push
nnoremap  gpl <Cmd>:Git pull
nnoremap  gb <Cmd>:Git blame
nnoremap  gc <Cmd>:Git commit
nnoremap  gg <Cmd>:Git
nnoremap  ep <Cmd>NERDTreeExplore ~/.config/nvim/lua/plugins
nnoremap  gl <Cmd>:Git log
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() == 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() == 'V' ? ':normal! @=reg_recorded()' : 'Q'
xnoremap S <Plug>(nvim-surround-visual)
xnoremap X "_d
nnoremap X "_d
nnoremap Y y$
nnoremap [q <Cmd>cprevious
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap ]q <Cmd>cnext
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap cS <Plug>(nvim-surround-change-line)
nnoremap cs <Plug>(nvim-surround-change)
nnoremap ds <Plug>(nvim-surround-delete)
xnoremap gS <Plug>(nvim-surround-visual-line)
xnoremap gp "+p
nnoremap gp "+p
xnoremap gy "+y
nnoremap gy "+y
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap x "_x
nnoremap x "_x
nnoremap ySS <Plug>(nvim-surround-normal-cur-line)
nnoremap yS <Plug>(nvim-surround-normal-line)
nnoremap yss <Plug>(nvim-surround-normal-cur)
nnoremap ys <Plug>(nvim-surround-normal)
nnoremap <SNR>29_: :=v:count ? v:count : ''
nnoremap <C-K> k
nnoremap <C-J> j
nnoremap <C-H> h
nnoremap <C-T> <Cmd>tabnew
nnoremap <F12> <Cmd>Lazy
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nmap <C-W><C-D> d
nnoremap <C-L> l
inoremap S <Plug>(nvim-surround-insert-line)
inoremap s <Plug>(nvim-surround-insert)
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set helplang=pt
set ignorecase
set listchars=nbsp:␣,tab:»\ ,trail:·
set noloadplugins
set packpath=/opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/nerdtree,~/.local/share/nvim/lazy/nvim-surround,~/.local/share/nvim/lazy/copilot.lua,~/.local/share/nvim/lazy/neogit,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/vim-fugitive,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/vim-rails,~/.local/share/nvim/lazy/vim-vividchalk,/opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime,/opt/homebrew/Cellar/neovim/0.10.0/share/nvim/runtime/pack/dist/opt/matchit,/opt/homebrew/Cellar/neovim/0.10.0/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/vim-rails/after
set scrolloff=10
set shiftwidth=2
set smartcase
set softtabstop=2
set statusline=%#Normal#
set tabstop=2
set termguicolors
set undodir=~/.config/nvim/undo
set undofile
set window=53
" vim: set ft=vim :
