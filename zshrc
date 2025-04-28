# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/reptoxx/.zsh/completions:"* ]]; then export FPATH="/home/reptoxx/.zsh/completions:$FPATH"; fi
# history
HISTSIZE=50000
SAVEHIST=100000
HISTFILE=~/.cache/zsh/.histfile

# autoload -Uz compinit
# compinit

# Set Starship Path
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# Change PATH here
# check if folder exists
if [ -d "/opt/homebrew/bin" ]; then
    export PATH=/opt/homebrew/bin:$PATH
    if [ -d "/opt/homebrew/sbin" ]; then
        export PATH=/opt/homebrew/sbin:$PATH
    fi
fi
export GOPATH=$HOME/go

export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/bob/nvim-bin:$PATH

# Carapace setup
# export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
# zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'

# User configuration
source ~/.config/helper-scripts/init.sh

# This file is a place to put your custom aliases, functions, etc. 
source ~/.bash_aliases

eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(zoxide init zsh --cmd cd)"
# source <(carapace _carapace)

# pnpm
export PNPM_HOME="$HOME/.pnpm-store"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/reptoxx/.bun/_bun" ] && source "/home/reptoxx/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config/"
# . "/home/reptoxx/.deno/env"
# fnm
eval "`fnm env`"
