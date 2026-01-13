" packages
packadd vim-jetpack
call jetpack#begin()
  Jetpack 'tani/vim-jetpack', { 'opt': 1 } " bootstrap
  Jetpack 'cocopon/iceberg.vim'            " color scheme
call jetpack#end()

" sync plugins
for name in jetpack#names()
  if !jetpack#tap(name)
    call jetpack#sync()
    break
  endif
endfor
