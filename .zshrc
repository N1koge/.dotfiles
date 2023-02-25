# zsh-autocompletion
source ~/.zsh/zsh-autocomple/zsh-autocomplete.plugin.zsh

# docker completion
fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i

# activate color feature
autoload -Uz colors && colors

# enable starship in zsh
eval "$(starship init zsh)"

# enable zoxide
eval "$(zoxide init zsh)"

# pathes
## gcloud
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# aliases

## l aliases
alias l="lsd"
alias ll="l -l"
alias lla="l -la"
alias lt="l --tree"

## silicon aliases
alias silcc="silicon --from-clipboard --to-clipboard"

## fzf aliases
alias fzfc="fzf | pbcopy"
alias fzfp="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias fzfpc="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | pbcopy"

# usuful commands
alias rmansi="sed -e 's/\x1b\[[0-9;]*m//g'"
alias marp="npx @marp-team/marp-cli"

