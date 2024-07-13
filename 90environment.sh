for assign in $(awk '!/#/ && /=/ { print $1 }' /etc/environment)
do
    export $assign 
done
unset assign

export PATH=$(for p in $(echo "${PATH}:/opt/bin" | tr : "\n" | sort -u)
do
    [ -e "$p" ] && echo "$p"
done | tr "\n" ":" | sed "s/:$//g")
