
# Fig
eval "$(fig init zsh pre)"

# fsm
eval "$(fnm env --use-on-cd)"

# Autocomplete
FPATH=$(brew --prefix)/share/zsh/site-functions:$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit
compinit

# Starship
eval "$(starship init zsh)"

# Fig
eval "$(fig init zsh post)"