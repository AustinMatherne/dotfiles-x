#!/bin/sh
xcalib -s 0 ~/.color/icc/shimian-1-center-sn207l2syb-hw10620.icc
xcalib -s 1 ~/.color/icc/shimian-2-left-sn208l2syb-doai7026.icc
xcalib -s 2 ~/.color/icc/shimian-3-right-sn207l2syb-doai7054.icc
mux
urxvtd --quiet --opendisplay --fork
urxvtc -name irssi -e sh -c 'source ~/.zshrc && tmux attach-session -t irssi'
urxvtc -name vim -e sh -c 'source ~/.zshrc && tmux attach-session -t vim'
urxvtc -e sh -c 'source ~/.zshrc && tmux attach-session -t austinmatherne'
chromium &
parcellite &
dropbox start &
clip-get &
clip-set &

