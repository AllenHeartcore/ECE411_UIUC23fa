#/bin/bash

cd sim

if [ ! -f simulation.log ] || grep -iq 'error\|warning' simulation.log; then
    echo -e "\033[0;31mSim failed:\033[0m"
    grep -i 'error\|warning' simulation.log
    exit 1
else
    echo -e "\033[0;32mSim Successful \033[0m"
fi

exit 0
