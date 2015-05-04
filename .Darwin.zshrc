# Path
# export PATH=/usr/texbin:~/local/bin:/usr/local/bin:/usr/local/sbin:/opt/X11/bin:/usr/bin:/usr/sbin:/bin:/sbin
export PATH=/usr/texbin:~/local/bin:${PATH}


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
