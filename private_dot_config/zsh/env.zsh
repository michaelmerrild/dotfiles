
export EDITOR="code --wait"
export GIT_CONFIG_GLOBAL="${HOME}/.config/git/config"
export PNPM_HOME="${HOME}/Library/pnpm"

# Path
export PATH="${PATH}:${HOME}/.local/bin"
export PATH="${PATH}:${HOME}/.fig/bin"
export PATH="${PATH}:${HOME}/.rd/bin"
export PATH="${PATH}:${PNPM_HOME}"
export PATH="${PATH}:${HOME}/.cargo/bin"

source "$ZDOTDIR/env.secret.zsh"