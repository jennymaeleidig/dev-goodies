if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

# remove switch to zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# bat theme
export BAT_THEME="Monokai Pro"

# zoxide
eval "$(zoxide init bash)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# mac ports
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# playdate
export PLAYDATE_SDK_PATH="/Users/jennyleidig/Developer/PlaydateSDK"
export PATH="/Users/jennyleidig/Developer/PlaydateSDK/bin:$PATH"

# aliases
alias pico8="/Applications/PICO-8.app/Contents/MacOS/pico8; exit"
alias hg="history | grep"
alias cat="bat" 
alias grep="rg"
alias ls="eza"
alias cd="z"
alias cdi="zi"
