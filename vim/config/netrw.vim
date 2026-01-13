let g:netrw_banner=0    " バナーを非表示
let g:netrw_liststyle=0 " ファイル/ディレクトリ名のみ表示(日付等は表示しない)
let g:netrw_hide=1      " デフォルト表示をドットファイル非表示に設定

augroup NetrwKeyMap
  au!
  au FileType netrw nmap <buffer> h -    " 親ディレクトリに移動する (h)
  au FileType netrw nmap <buffer> l <CR> " ファイルを開く、ディレクトリ移動 (l)
  au FileType netrw nmap <buffer> s <C-W> " ウィンドウ移動 (s)
  au FileType netrw nmap <buffer> . gh    " ドットファイルの表示/非表示切り替え
augroup END