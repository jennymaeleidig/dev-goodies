# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# User configuration

# remove switch to zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=/usr/local/bin:$PATH

# bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# bat theme
export BAT_THEME="Monokai Pro"

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

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
. <(asdf completion bash)

#java
. ~/.asdf/plugins/java/set-java-home.bash

#python
export PATH="$HOME/.local/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

#flash player
export FLEX_HOME="/Users/jennyleidig/Documents/Adobe/Flash/apache-flex-4.16.1-air-51.1.3.12/apache-flex-sdk-4.16.1-bin"

# Docker
#expose docker to colima
export DOCKER_HOST="unix://$HOME/.colima/docker.sock"


# oh my bash

# Path to your oh-my-bash installation.
export OSH='/Users/jennyleidig/.oh-my-bash'

OSH_THEME="ht"

OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
  zoxide
)

source "$OSH"/oh-my-bash.sh