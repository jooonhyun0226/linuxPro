#!/bin/bash

if [[ $TERM != "xterm-256color" ]]; then
    echo "current terminal is not x-terminal"
    exit 1
fi

i=0

# 창을 이동시킬 거리, 사용자의 사용환경에 따라 조절해야함. 나는 700*450
X_SHIFT=700
Y_SHIFT=450

while [[ $i -lt 4 ]]; do
    
    # i 값에 따라 위치 좌표 설정 (+X좌표+Y좌표)
    if [[ $i -eq 0 ]]; then
        POS="+0+0"              # 좌상단
    elif [[ $i -eq 1 ]]; then
        POS="+$X_SHIFT+0"       # 우상단
    elif [[ $i -eq 2 ]]; then
        POS="+0+$Y_SHIFT"       # 좌하단
    elif [[ $i -eq 3 ]]; then
        POS="+$X_SHIFT+$Y_SHIFT" # 우하단
    fi

    # 설정된 위치로 터미널 실행
    gnome-terminal --geometry=$POS &
    
    let "i += 1"
done

exit 0
