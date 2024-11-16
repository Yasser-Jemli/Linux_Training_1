#!/bin/bash 


#   Author  :   Yasser JEMLI
#   Date    :   12-11-2024

# ------------------------------------------------------------------------------
# 1 - Add the -x option when running Bash Script to enable debug tracing of a shell script as follows :
# bash -x script.sh
# --> Running the script with the -x flag will print each source line with current status 


# 2 - Debug only protions of the script using set -x and set +x 
# example : 

    # for i in {1..6};
    # do
    #     set -x 
    #     echo "$i"
    #     set +x
    # done
    # echo "Script is executed"

# 3- we need to debugging information in our own format we can use set up such a debugging style by passing
# the _DEBUG environment variables 

function DEBUG()
{
    [ "$_DEBUG" == "on" ] && $@ || :
}

for i in {1..10}
do
    DEBUG echo $i
done

# 4- The -x flag outputs every line of script as it is executed to stdout. However, we may require
# only some portions of the source lines to be observed such that commands and arguments
# are to be printed at certain portions. In such conditions we can use set builtin to enable
# and disable debug printing within the script.
# > set -x: This displays arguments and commands upon their execution
# > set +x: This disables debugging
# > set -v: This displays input when they are read
# > set +v: This disables printing input


# **********************************************************************************************************************
# ****************************** Shebang hack **************************************************************************

# The shebang can be changed from #!/bin/bash to #!/bin/bash -xv to enable 
# debugging without any additional flags ( -xv flags themselves )