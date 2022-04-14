# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT_COMMAND=prompt_command    # Function to generate PS1 after CMDs

prompt_command() {
    local EXIT="$?"                # This needs to be first
    PS1=""

    if [ $EXIT != 0 ]; then
        PS1+="\033[31m $EXIT\033[00m"
    else
        PS1+="\033[34m\033[00m"
    fi
        PS1+="\033[1;34m bash \w  \033[00m"
}

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && . "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
