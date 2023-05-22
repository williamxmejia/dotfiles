function git_branch_name()                                                  
  1 {
  2   branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $N    F}')
  3   if [[ $branch == "" ]];
  4   then
  5     :
  6   else
  7     echo " - %F{magenta}(-> %f%F{magenta}$branch%f%F{magenta})%f"
  8   fi
  9 }
 10 
 11 setopt prompt_subst
 12 
 13 PROMPT=''%F{blue}%n%f' @ '%F{green}%m%f' %~$(git_branch_name) $ '
 14 RPROMPT='%F{241}%T%f'
 15 zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'

