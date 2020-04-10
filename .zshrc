export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH=$PATH:~/.npm-global/bin

# For FZF plugin of vim
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

# -------------------------------------------------------------------
# ZSH
# -------------------------------------------------------------------
export ZSH=$HOME/.oh-my-zsh
export EDITOR=nvim

# -------------------------------------------------------------------
# Theme
# -------------------------------------------------------------------
ZSH_THEME='maah'

# -------------------------------------------------------------------
# Plugins
# -------------------------------------------------------------------
plugins=(
    command-not-found
    sudo
    systemd
)

# -------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------

# Refresh
alias reload='source ~/.zshrc; echo "Reloaded .zshrc"'

# Date
alias ymd="date +%Y-%m-%d"
alias jymd="jdate +%Y-%m-%d"

# Internet
alias myip="curl -4 ip.sb"
alias p9="ping 9.9.9.9 -c 9"

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ll="ls -lFh --color"
alias lld="ls -l  --color| grep ^d"
alias rmf="rm -rf"

# Pacman aliases
alias pac='sudo pacman -S'   # install
alias pacu='sudo pacman -Syu'    # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr='sudo pacman -Rs'   # remove
alias pacs='pacman -Ss'      # search
alias paci='pacman -Si'      # info
alias paclo='pacman -Qdt'    # list orphans
alias pacro='paclo && sudo pacman -Rns $(pacman -Qtdq)' # remove orphans
alias pacc='sudo pacman -Scc'    # clean cache
alias paclf='pacman -Ql' # list files

alias vi='nvim'
alias vim='nvim'

source $ZSH/oh-my-zsh.sh
