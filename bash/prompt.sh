function set_prompt {
    # Get current prompt and strip last 3 chars (\$ )
    local CURRENT=${PS1::-3}
   
    # "(%s)" below means that the prompt will be in (), no spaces 
    local GIT='$(__git_ps1 "(%s)")'

    local END="\$ "

    export PS1=${CURRENT}${GIT}${END}
}

set_prompt
