export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export WLR_NO_HARDWARE_CURSORS=1
#export WLR_NO_HARDWARE_CURSORS=0
export WLR_RENDERER_ALLOW_SOFTWARE=1

if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
    # https://github.com/swaywm/sway/issues/595
    export _JAVA_AWT_WM_NONREPARENTING=1
fi

. "$HOME/.cargo/env"
