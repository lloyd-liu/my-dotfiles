" No audible bell
set vb

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c


" remove specific OSX keybindings /iterm{{{
if has("gui_macvim")
  " Unmap D-n
  macmenu File.New\ Window key=<nop>
  " Unmap D-t
  macmenu File.New\ Tab key=<nop>
  " Unmap D-o
  macmenu File.Open\.\.\. key=<nop>
  " Unmap D-T
  macmenu File.Open\ Tab\.\.\. key=<nop>
  " Unmap D-W
  macmenu File.Close\ Window key=<nop>
  " Unmap D-w
  macmenu File.Close key=<nop>
  " Unmap D-p
  macmenu File.Print key=<nop>
endif


" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif

