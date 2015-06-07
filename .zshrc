# General settings
export LANG=ja_JP.UTF-8


# Paths
export PATH=${HOME}/local/bin:${PATH}


# Terminal title
case "${TERM}" in
    kterm* | xterm* )
    precmd() {
        echo -ne "\033]0;${USER}@${HOST%%.*}\007"
    }
    ;;
esac


# Enable color
autoload -U colors
colors


# Prompt
local p_cdir="%B%F{green}[%~]%f%b"$'\n'
local p_info="%F{cyan}%n@%m%f"
local p_mark="%B%(?,%F{green},%F{red})%(!,#,>)%f%b"
PROMPT="${p_cdir}${p_info} ${p_mark} "
PROMPT2="(%_) ${p_mark} "
#RPROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}"
SPROMPT="%F{yellow}correct: %R -> %r ? [Yes, No, Abort, Edit]:%f"
setopt transient_rprompt


## History
HISTFILE=${ZDOTDIR}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt bang_hist
setopt extended_history
setopt hist_ignore_dups
setopt share_history
setopt hist_reduce_blanks


# Enable complement
autoload -U compinit
compinit
# Show complement list
setopt auto_list
# Show complement list by typing complement key
setopt auto_menu
# Compact complement list
setopt list_packed
# Show file types in complement list
setopt list_types
# Reverse complement by Shift-Tab
bindkey "^[[Z" reverse-menu-complete
# Ignore case when in complement
zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"


# Load .zshrc_*
if [[ -f ${ZDOTDIR}/.${OSTYPE}.zshrc ]]; then . ${ZDOTDIR}/.${OSTYPE}.zshrc; fi
if [[ -f ${ZDOTDIR}/.`uname`.zshrc ]]; then . ${ZDOTDIR}/.`uname`.zshrc; fi
if [[ -f ${ZDOTDIR}/.`uname -n`.zshrc ]]; then . ${ZDOTDIR}/.`uname -n`.zshrc; fi


# ls Color
if [[ -f ${ZDOTDIR}/dircolors-solarized/dircolors.ansi-dark && -x `which dircolors` ]]; then
    eval `dircolors ${ZDOTDIR}/dircolors-solarized/dircolors.ansi-dark`
    zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
fi
