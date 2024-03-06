. /opt/homebrew/etc/profile.d/z.sh
export ZSH="$HOME/.oh-my-zsh"

source /var/lib/pvm.zsh
source "$HOME/.rye/env"

EDITOR="nvim"
ZSH_THEME="avit"
SOBOLE_THEME_MODE=dark

plugins=(
  git
  macos
  brew
  z
  github
)

export PHPENV_ROOT="/Users/joel/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

source $ZSH/oh-my-zsh.sh

alias zshconfig="$EDITOR ~/.zshrc"
alias reload="source ~/.zshrc"
alias server='python -m SimpleHTTPServer 8000'
alias rm='trash'
alias tldrf='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'
alias c='code'
alias cat='bat'
alias sed='sd'
alias e='$EDITOR'

alias l="exa --group-directories-first -lah"
alias ls="exa --group-directories-first"
alias ll="exa --group-directories-first -l"
alias la="exa --group-directories-first -la"
alias lt="exa --group-directories-first -T"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

function download() {
  cd ~/Downloads
  wget $1
}

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

# Add docker to path
export PATH="$PATH:$HOME/.docker/bin"

# composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/joel/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias nvm="unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"; nvm $@"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# React Native android...
#export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
#export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
#export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export PATH="/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/bin:$PATH"

eval "$(direnv hook zsh)"

export PATH="$PATH:/Users/joel/.bin"
export GEM_HOME="$HOME/.gem"

export HOMEBREW_NO_AUTO_UPDATE=1

export PATH=$PATH:/Users/joel/.spicetify

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
eval "$(starship init zsh)"

# opam configuration
[[ ! -r /Users/joel/.opam/opam-init/init.zsh ]] || source /Users/joel/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export PATH=$PATH:$HOME/.maestro/bin
export HOMEBREW_NO_INSTALL_FROM_API=0
export HOMEBREW_NO_ENV_HINTS=0

# bun completions
[ -s "/Users/joel/.bun/_bun" ] && source "/Users/joel/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/joel/Library/Application Support/Herd/config/php/82/"

# Herd injected PHP binary.
export PATH="/Users/joel/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/joel/Library/Application Support/Herd/config/php/74/"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# Created by `pipx` on 2024-01-24 10:34:40
export PATH="$PATH:/Users/joel/.local/bin"
source "$HOME/.rye/env"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:/Users/joel/.kit/bin"
