# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/audns/miniconda3/bin/conda
    eval /home/audns/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/audns/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/audns/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/audns/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<

#starship init fish | source

# fcitx is the default input method
export XMODIFIERS=@im=fcitx
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx

set -U fish_greeting ""
alias cd='z'
alias pparu='proxychains4 -q paru'
alias vmrestart='sudo modprobe -v vmmon; sudo modprobe vmnet; sudo systemctl start vmware-networks.service; sudo systemctl start vmtoolsd.service'
alias cat='bat'
alias ls='eza --color=always --icons=always'
alias lla='eza --color=always --icons=always -al'
alias pcp='proxychains4 -q'
alias ip='ip -c'

# Auto-launch tmux if not already in a tmux session and in an interactive terminal
if command -q tmux
    and status is-interactive
    and not set -q TMUX
    exec tmux
end
