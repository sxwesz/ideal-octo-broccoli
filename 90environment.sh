for assign in $(awk '!/#/ && /=/ { print $1 }' /etc/environment)
do
    export $assign 
done
unset assign
