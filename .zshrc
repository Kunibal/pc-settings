alias vim="nvim"
alias gs="git status"
alias dss="docker-sync-stack"
alias nrb="npm run build"
alias ls="exa"

export PATH="/usr/local/opt/openssl/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add directory and current branch to terminal name
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{grey}%n%f %F{#4387ed}%~%f %F{#aaf0d1}$(parse_git_branch)%f %F{normal}$%f '

source /Users/kun.alexander/.docker/init-zsh.sh || true # Added by Docker Desktop
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
