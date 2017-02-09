if getfsize("vimscript")>0
    source   vimscript
endif
let g:ctrlp_map = '<c-h>'
map <C-b> <PageUp>
"set shiftwidth=2
set tags=.tags;  " ; 不可省略，表示若当前目录中不存在tags， 则在父目录中寻找。
map <C-F12> :!ctags -R -o .tags --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
"taglist{
    let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
    let Tlist_Ctags_Cmd='/usr/bin/ctags'  "设置ctags命令的位置
    nmap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}
