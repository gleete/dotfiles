source ~/.git-prompt.sh
#USERNAME
export PS1='\[\e[0;1m\]┌─(\[\e[36;1m\]\u\[\e[0;1m\])'\
`#HOST`\
'@(\[\e[31;1m\]\H\[\e[0;1m\]) - \
`#TIME & DATE` \
(\[\e[31;1m\]\t\[\e[0;1m\] \d) - \
`#WORKING DIRECTORY`\
(\[\e[36;1m\]\w\[\e[0;1m\]) \
`#STATUS OF LAST COMMAND` \
-\[\e[01;30m\] \
`if [ $? = 0 ]; \
	then echo "\[\e[32m\] ✔ "; \
	else echo "\[\e[31m\] ✘ "; \
fi`\[\e[00;37m\]\[\e[01;37m\]\
`#GIT INTEGRATION`\
:`[[ $(git status 2> /dev/null | head -n2 | tail -n1) != "# Changes to be committed:" ]] && \
echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] \
 || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")'\ \
`#PROMPT LINE`\
'\[\e[01;34m\]\[\e[00m\]\n└──┤\[\e[0m\]'
export PATH=${HOME}/homebrew/bin:${PATH}
