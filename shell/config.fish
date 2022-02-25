set PATH ~/.nodebrew/current/bin ~/tools/bin ~/Library/Python/3.7/bin/ $PATH
set PATH $PATH /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home/bin
set JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home
#rbenv
#set -x PATH $HOME/.rbenv/bin $PATH
#status --is-interactive; and source (rbenv init -|psub)

# Go
set -x  GOPATH $HOME/go
set -x GOENV_ROOT $HOME/.goenv
set PATH $GOENV_ROOT/shims $PATH
set PATH $GOPATH/bin $PATH
eval (goenv init - | source)
