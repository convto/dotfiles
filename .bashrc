# Add GoLang to PATH
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# neovim key bind
alias vim='nvim'

# direnv setting
export EDITOR='nvim'
eval "$(direnv hook bash)"
