# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# The default theme: ZSH_THEME="robbyrussell"
# ZSH_THEME="aussiegeek"
# ZSH_THEME="bira"
# ZSH_THEME="bureau"
# ZSH_THEME="candy"
# ZSH_THEME="darkblood"
# ZSH_THEME="darkblood"
# ZSH_THEME="dst"
# ZSH_THEME="duellj"
# ZSH_THEME="fino-time"
#ZSH_THEME="jonathan"
ZSH_THEME="fino-time"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias macvim="open -a MacVim"
alias lsg="ls | grep "
alias lslg="ls -a | grep "

# for hadoop
alias hfs="hadoop fs "
alias hfls="hadoop fs -ls"
alias hfrm="hadoop fs -rm"
alias hfcat="hadoop fs -cat"
alias hjar="hadoop jar"

# for git
alias gph="git push github"
alias gcma="git commit -am"
alias gcm="git commit -m"
alias gpll="git pull github"
alias gpllo="git pull origin"

# for emacsclient
# alias emacs="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --alternate-editor=/Applications/Emacs.app/Contents/MacOS/Emacs"
ec()
{
/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --alternate-editor=/Applications/Emacs.app/Contents/MacOS/Emacs -n "$*"
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=1

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Path for git
export PATH=/usr/local/bin:$PATH

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/Applications/MATLAB_R2013a.app/bin

# Customize HADOOP
export HADOOP_INSTALL=/Users/xcv58/hadoop
export HADOOP_HOME=$HADOOP_INSTALL
export PATH=$PATH:$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin
export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
export HADOOP_COMMON_HOME=$HADOOP_INSTALL
export HADOOP_HDFS_HOME=$HADOOP_INSTALL
export YARN_HOME=$HADOOP_INSTALL


# for emacs term
if [[ -n ${INSIDE_EMACS} ]]; then
	# This shell runs inside an Emacs *shell*/*term* buffer.
	prompt walters
	unsetopt zle
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
