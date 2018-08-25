PROMPT_COLOR='\e[00m\e[38;05;166m'
export PS1='\['$PROMPT_COLOR'\][\h]: \w\$\[\e[0m\] '
export EDITOR='subl -w'
export CLICOLOR=4
export LSCOLORS=GxFxCxDxBxegedabagaced
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
DEFAULT=$PS1
PS1="[\$(parse_git_branch)] Davey:"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

  source "$HOME/.rvm/scripts/rvm"

elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

  source "/usr/local/rvm/scripts/rvm"

else

  printf "ERROR: An RVM installation was not found.\n";

fi
  GIT_PROMPT_ONLY_IN_REPO=1
  source ~/.bash-git-prompt/gitprompt.sh
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
