export GOPATH=${HOME}/go
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.io,direct

val=${HOME}/.cargo/bin:${HOME}/.local/bin:${PATH}:${GOPATH}/bin:${HOME}/local/bin
export PATH=$(for p in $(echo ${val} | tr : '\n' | sort -u)
do
    [ -e "$p" ] && echo "$p"
done | tr '\n' : | sed 's/:$//g')
export LDFLAGS="-L${PREFIX}/local/lib"
