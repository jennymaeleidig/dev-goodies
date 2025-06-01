if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

# remove switch to zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

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

if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

# remove switch to zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

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
alias start-tabby="tabby serve --device metal --model Qwen2.5-Coder-7B --chat-model Qwen2-1.5B-Instruct"

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
. <(asdf completion bash)

# Load Angular CLI autocompletion.
source <(ng completion script)

# zoxide
eval "$(zoxide init bash)"
