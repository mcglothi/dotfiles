#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source /home/mcglothi/.config/broot/launcher/bash/br

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias uplayfix="sudo rm -rf /home/mcglothi/.local/share/Steam/steamapps/compatdata/552520/pfx"
alias update='sudo pacman -Syu'
alias apf-inst='aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key==], PrivateIpAddress, PublicIpAddress]' --output text'
alias apf-inst=aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key==], PrivateIpAddress, PublicIpAddress]' --output text
alias apf-inst=aws ec2 describe-instances --query 'Reservations[*].Instances[*].[Tags[?Key+=], PrivateIpAddress, PublicIpAddress]' --output text
