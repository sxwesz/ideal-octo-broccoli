export GOPATH=${GOPATH:-${HOME}/go}
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.io,direct

. "$HOME/.cargo/env"
val=${GOPATH}/bin:${HOME}/.local/bin:${PATH}

export PATH=$(for p in $(echo ${val} | tr : '\n' | sort -u)
do
    [ -e "$p" ] && echo "$p"
done | tr '\n' : | sed 's/:$//g')
