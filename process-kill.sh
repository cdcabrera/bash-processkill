#!/usr/bin/env bash
#
# chmod it by:
# $ chmod +x [YOURFILE]
# If that doesn't work try the below
# $ chmod 777 [YOURFILE]
#
# main()
#
{

  while getopts p: option;
    do
      case $option in
        p)
          PORT=$OPTARG
        ;;
        \?)
          exit 1;
        ;;
      esac
  done

  if [ "$PORT" -eq "$PORT" ]; then
    echo Killing \":$PORT\"
    kill $(sudo lsof -t -i:$PORT) || sudo kill $(sudo lsof -t -i:$PORT)
  else
    echo Option should be an int, not \"$PORT\"
  fi

}