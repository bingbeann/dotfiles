eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

###########################################################################################################
#####################################     ENV VAR     #####################################################
###########################################################################################################
export HOMEBREW_AUTO_UPDATE_SECS="86400"

if [ -e "/Applications/Android Studio.app" ]; then
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-21.jdk/Contents/Home
    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/platform-tools
fi

if command -v go >/dev/null 2>&1; then
    export PATH=$PATH:$HOME/go/bin
fi

###########################################################################################################
#####################################     ALIAS     #######################################################
###########################################################################################################
alias ls="ls --color=auto"
alias ll="ls -la"

###########################################################################################################
#####################################     NVM     #########################################################
###########################################################################################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###########################################################################################################
#####################################     ZSH     #########################################################
###########################################################################################################
# vi mode
bindkey -v
export KEYTIMEOUT=1
setopt incappendhistory
setopt nosharehistory

# cursor beam
cursor_block='\e[2 q'
cursor_beam='\e[6 q'

function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne $cursor_block
    elif [[ ${KEYMAP} == main ]] ||[[ ${KEYMAP} == viins ]] || [[ $1 = 'beam' ]]; then
        echo -ne $cursor_beam
    fi
}

zle-line-init() {
    echo -ne $cursor_beam
}

zle -N zle-keymap-select
zle -N zle-line-init

# vim mapping for completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

lfcd() {
    cd "$(command lf -print-last-dir "$@")"
}

bindkey -s '^o' 'lfcd\n'

autoload -U compinit; compinit
_comp_options+=(globdots)

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
