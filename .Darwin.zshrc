# Path
export PATH=/usr/texbin:~/Library/Python/$(python3 --version 2>&1 | sed -E "s/Python (.*)\..*/\1/g")/bin:${PATH}


# ls
if [[ -d /usr/local/opt/coreutils/libexec/gnubin ]]; then
    export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
    export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}
    alias ls="ls --color=auto"
else
    export LSCOLORS=gxfxcxdxbxegedabagacad
    alias ls="ls -G"
fi


# Java
alias java="java -Dfile.encoding=UTF-8"
alias javac="javac -J-Dfile.encoding=UTF-8"
