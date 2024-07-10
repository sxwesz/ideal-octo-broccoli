for assign in $(awk '!/#/' /etc/environment)
do
    export $assign 
done
unset assign
