
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

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

complete -C /usr/local/bin/terraform terraform
#export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
alias k=kubectl
export CLICOLOR=1
alias tf=terraform
alias kge="kubectl get events --sort-by='.lastTimestamp'"
HISTFILESIZE=10000000
HISTSIZE=10000000
