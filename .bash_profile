
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/binliu/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/binliu/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/binliu/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/binliu/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias ll='ls -ltrahG'
# Save a lot of typing for common commands
alias gs="git status"
alias gc="git commit"
alias v="vim"
alias vi="vim"
# Save you from mistyping
alias sl=ls

# Overwrite existing commands for better defaults
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias df="df -h"           # -h prints human readable format


# Set branch name, dirty state, and color
# Find dirty state
function parse_git_dirty {
  [[ -n "$(git status -s 2> /dev/null)" ]] && echo "*"
}

# Get branch name
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[32m\]\w\[\033[33m\]\$(git_branch)\$(parse_git_dirty)\[\033[00m\]$"
#export PS1="\[\e[31m\][\[\e[m\]\[\e[38;5;172m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\] \[\e[38;5;214m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

complete -C /usr/local/bin/terraform terraform
#export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
alias k=kubectl
#export CLICOLOR=1
alias tf=terraform
alias kge="kubectl get events --sort-by='.lastTimestamp'"
HISTFILESIZE=10000000
HISTSIZE=10000000
alias gcm='git commit -m'
alias ga='git add .'
export USER=binliu
# Terraform aliases.
alias tf=terraform
alias tfw='tf workspace'
alias tfwl='tfw list'
alias tfwn='tfw new'
alias tfws='tfw select'
alias tfwd='tfw delete'
alias tfv='tf validate'
alias tfi='tf init'
alias tfr='tf refresh'
alias tfp='tf plan'
alias tfa='tf apply'
alias tfaa='tfa -auto-approve'
alias tfd='tf destroy'
alias tfda='tf destroy --auto-approve'
alias tfo='tf output'
alias tfs='tf state'
alias tfsl='tf state list'
alias tft='tf taint'
alias tfu='tf untaint'
export REGION="us-east-2"
export PRIMARY_AZ="us-east-2b"
export BACKUP_AZ="us-east-2c"
export DEPLOYMENT="robinpuddle"
complete -F __start_kubectl k
#source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
#source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
alias kpd="kubectl get pod"
alias h2oa="h2o --conf ~/.h2oai/aks-h2o-cli-config.toml"
alias h2oe="h2o --conf ~/.h2oai/eks-h2o-cli-config.toml"
alias h2og="h2o --conf ~/.h2oai/gke-h2o-cli-config.toml"
export MYS3BUCKETNAME="h2o-robin" 
