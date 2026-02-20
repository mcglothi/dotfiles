# Ignore "insecure" directory modes when sourcing user home config when sudo'ing to root - TM
ZSH_DISABLE_COMPFIX="true"

# Display system info on launch if neofetch/lolcat available - TM
#if [ -f /usr/bin/neofetch ] && [ -f /usr/bin/lolcat ]
#	then
#		neofetch | lolcat
#fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH="/home/mcglothi/.oh-my-zsh"
export ZSH="/home/mcglothi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(git zsh-syntax-highlighting zsh-autosuggestions )



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


# Load command completion 
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
zstyle ':completion::complete:*' gain-privileges 1


# Fuzzyfiinder
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/mcglothi/.config/broot/launcher/bash/br


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Disable ENV variables from autocomplete
function _parameters() {}


alias dmesg='sudo dmesg'
alias pacman='sudo pacman'
alias winsize="xdotool getactivewindow getwindowgeometry && echo Columns\:\ $(tput cols) && echo Lines\:\ $(tput lines)"
alias tb="nc termbin.com 9999"
alias iftop="sudo iftop"
alias nethogs="sudo nethogs"

alias uplayfix="sudo rm -rf /home/mcglothi/.local/share/Steam/steamapps/compatdata/552520/pfx"
alias update='sudo pacman -Syu'
alias big='du -hsx -- * | sort -rh | head -10'
alias apf-inst="aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key==\`Name\`], PrivateIpAddress, PublicIpAddress]' --output text"
alias apf-ssh="ssh -i ~/tmcglothin-apf-prod.pem ec2-user@ec2-54-214-171-16.us-west-2.compute.amazonaws.com"
alias lachlan='/home/mcglothi/code/scripts/autoVPN.sh'
alias updatedb='sudo updatedb'
alias fd='firebase deploy --only hosting'
alias apf-certs='aws s3 ls s3://apf-certs --recursive --human-readable --summarize | grep -i total'
alias racadm='racadm -r 10.10.10.1 -u root -p Tinjat1! '
alias myip="wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1"
alias serverfans10='ipmitool -I lanplus -H 10.10.10.1 -U root -P Tinjat1! raw 0x30 0x30 0x02 0xff 0x0A'
alias serverfans20='ipmitool -I lanplus -H 10.10.10.1 -U root -P Tinjat1! raw 0x30 0x30 0x02 0xff 0x14'
alias serverfansinit='ipmitool -I lanplus -H 10.10.10.1 -U root -P Tinjat1! raw 0x30 0x30 0x01 0x00'
export PATH=~/.npm-global/bin:$PATH

# aikb — env vars (tokens written by bootstrap)
[[ -f ~/.aikb-env ]] && source ~/.aikb-env

# bwu — unlock Bitwarden vault and persist session for scripts
bwu() {
  export BW_SESSION=$(bw unlock --raw)
  echo "$BW_SESSION" > ~/.bw_session
  chmod 600 ~/.bw_session
  echo "[bw] vault unlocked"
}
