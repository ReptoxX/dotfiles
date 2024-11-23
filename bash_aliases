alias cp='rsync -avz'

# alias nvim to vim
alias 'vim'='nvim'
alias 'v'='nvim'

# Rewrite classic commands
alias ls='eza --icons=always'
alias cat=bat
alias la=tree
alias cl='clear'
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias reload='source ~/.zshrc'

# GIT
alias gc="git commit"
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias gadd='git add'
alias ga='git add -p'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'
alias gm='git merge'
alias gmt='git mergetool'
alias gitCheckout='func_gitCheckout'
alias gitLiveStableInAll='func_gitLiveStableAll'
alias gitLiveStableIn='func_gitLiveStableIn'

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Nmap
alias nm="nmap -sC -sV -oN nmap"

# K8S
export KUBECONFIG=~/.kube/config
alias k="kubectl"
alias ka="kubectl apply -f"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kdel="kubectl delete"
alias kl="kubectl logs"
alias kgpo="kubectl get pod"
alias kgd="kubectl get deployments"
alias kc="kubectx"
alias kns="kubens"
alias kl="kubectl logs -f"
alias ke="kubectl exec -it"
alias kcns='kubectl config set-context --current --namespace'
alias podname=''
