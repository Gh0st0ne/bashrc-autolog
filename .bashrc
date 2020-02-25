PS1='[`date  +"%d-%b-%y %T"`] > ' 
test "$(ps -ocommand= -p $PPID | awk '{print $1}')" == 'script' || (script -f $HOME/logs/$(date +"%d-%b-%y_%H-%M-%S")_shell.log)
