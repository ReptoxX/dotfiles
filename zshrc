# Set Starship Path
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# Change PATH here
# check if folder exists
if [ ! -d "/opt/homebrew/bin" ]; then
    export PATH=/opt/homebrew/bin:$PATH
fi

export PATH=$HOME/.bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/bob/nvim-bin:$PATH

# User configuration
source ~/.config/helper-scripts/init.sh

# This file is a place to put your custom aliases, functions, etc. 
source ~/.bash_aliases

eval "$(starship init zsh)"
eval $(thefuck --alias)
eval "$(zoxide init zsh --cmd cd)"

# pnpm
export PNPM_HOME="$HOME/.pnpm-store"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
