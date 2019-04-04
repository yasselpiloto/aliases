# my prompt
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -colorize-hostname -error $? -condensed -cwd-max-depth 3 -modules "venv,user,host,cwd,ssh,perms,jobs")"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
