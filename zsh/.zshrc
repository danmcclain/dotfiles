# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula-pro"
#ZSH_THEME="spaceship"
#"alanpeabody"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

mkcd() { mkdir $*; cd $*; }
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew yarn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias gap="git add -p"
alias gpr="git push && git pull-request"
alias gdt="git difftool"
alias gc="git commit -S --verbose"
alias gc!="git commit -v --amend -S"
alias gdmb="git delete-merged-branches"
alias nom="rm -rf node_modules && npm cache clear && npm install"
alias bom="rm -rf bower_components && bower cache clean && bower install"
alias nombom="nom && bom"
#alias git="hub"
alias phoenix_new="mix phoenix.new --no-html --no-brunch"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias ci="code-insiders"

export SHELL="/bin/zsh"
export EDITOR="vim"


export PATH="$HOME/scripts:./bundler_stubs:./bin:/usr/local/bin:/usr/local/sbin:$PATH"
zstyle :omz:plugins:ssh-agent agent-forwarding on

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source "/Users/dmc/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
export GOPATH="$HOME/Projects/go"
export PATH="$PATH:$GOPATH/bin"

. $HOME/.asdf/asdf.sh

#. $HOME/.asdf/completions/asdf.bash

export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/dmc-kube-kubeconfig.yaml

source <(kubectl completion zsh)
export PATH=$PATH:$HOME/.linkerd2/bin:$HOME/bin
alias vim=nvim

export SSH_AUTH_SOCK=/Users/dmc/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

#oplogin() { eval $(op signin my) }
export OP_ACCOUNT=my.1password.com
eval "$(op completion zsh)"; compdef _op op
eval "$(zoxide init zsh)"
alias cdk="npx cdk"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
