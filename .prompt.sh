# my prompt
GREEN="\[\033[00;32m\]"
RED="\[\033[00;31m\]"
TEAL="\[\033[00;36m\]"
YELLOW="\[\033[00;33m\]"
if [ `whoami` == 'root' ]; then
    USER_COLOR=$RED
    SEPARATOR="#"
    CWD_COLOR=$YELLOW
else
    USER_COLOR=$GREEN
    SEPARATOR="\$"
    CWD_COLOR=$TEAL
fi

LIGHTEN="\[\033[01m\]"
MAGENTA="\[\033[00;35m\]"
WAT="\[\033[00m\]"
DK_GREY="\[\033[01;30m\]"
HOSTNAME=`hostname -f`
GIT_BRANCH='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\/`'
GREY="\[\033[00m\]"
export PS1="$USER_COLOR\u$LIGHTEN@$CWD_COLOR$HOSTNAME$LIGHTEN:$MAGENTA\w$WAT$DK_GREY$GIT_BRANCH$GREY$SEPARATOR "
