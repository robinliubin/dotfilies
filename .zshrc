# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/binliu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	iTerm2
	macos
	terraform
	docker
	copyfile
	web-search
	vscode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
set ZSH_DISABLE_COMPFIX=true
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
complete -C /usr/local/bin/terraform terraform
#export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
alias k=kubectl
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
zstyle ':completion:*:default' list-colors ${(s.:.)LSCOLORS}
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
export MYS3BUCKETNAME="h2o-robin"
complete -F __start_kubectl k
#source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
#source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
alias kpd="kubectl get pod"
alias h2oa="h2o --conf ~/.h2oai/aks-h2o-cli-config.toml"
alias h2oe="h2o --conf ~/.h2oai/eks-h2o-cli-config.toml"
alias h2og="h2o --conf ~/.h2oai/gke-h2o-cli-config.toml"
alias h2ou="h2o --conf ~/.h2oai/ucsf-h2o-cli-config.toml"
alias h2ou2='h2o --conf ~/.h2oai/ucsf2-h2o-cli-config.toml'
alias h2oe22100='h2o --conf ~/.h2oai/eks22100-h2o-cli-config.toml'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/binliu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/binliu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/binliu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/binliu/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
upload() {
	#upload an object to my s3 bucket
	echo "uploading $1 to s3://$MYS3BUCKETNAME"
	aws s3 cp $1 s3://$MYS3BUCKETNAME --acl public-read
	echo "upload is complete!" 
	echo "to download, wget has been copied to clipboard: "
	echo "wget https://$MYS3BUCKETNAME.s3.us-east-2.amazonaws.com/$1" 
	echo "wget https://$MYS3BUCKETNAME.s3.us-east-2.amazonaws.com/$1" | pbcopy
}
s3rm() {
	#delete an object from my s3 bucket
	aws s3 rm s3://$MYS3BUCKETNAME/$1
}
export PATH="/usr/local/opt/go@1.17/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export DAILICENSE="/Users/binliu/Documents/H2O/configyamls/dai.sig"
export STEAMLICENSE="/Users/binliu/Documents/H2O/configyamls/steam.sig"
