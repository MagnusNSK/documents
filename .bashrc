#
# ~/.bashrc
#

[[ $- != *i* ]] && return

export LANG=ja_JP.UTF-8

if [[ $(tty) == /dev/tty* ]]; then
    export LANGUAGE=en_US:en
    export LC_ALL=en_US.UTF-8
fi

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
