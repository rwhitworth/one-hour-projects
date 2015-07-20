cmd_repl()
{
  #set -- $1
  
  local T=''
  local i=''
  
  for i in $(seq 3 $#)
  do 
    T="$T '${@:$i:1}'"
  done

  T=${T/$1/$2}

  echo $T > /tmp/T
  local tempfile=''
  tempfile=$(mktemp)
  echo "set -- $T" > $tempfile
  echo $tempfile
}

show()
{
  for i in $(seq 1 $#) ; do echo ${@:$i:1} ; done
}

set -- --longest -y -t 3 '--short=hello long'
echo Before:
show ${@}
echo -----

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
src=$(cmd_repl --longest -l ${@})
. $src
src=$(cmd_repl --short -s ${@})
. $src
echo After:
show ${@}
IFS=$SAVEIFS

# do getopt stuff here with your newly shortened strings
