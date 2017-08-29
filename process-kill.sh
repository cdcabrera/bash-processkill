#!/usr/bin/env bash
#
# chmod it by:
# $ chmod 700 [YOURFILE]
#
# main()
#
{

  while getopts p:c: option;
    do
      case $option in
        p)
          PORT=$OPTARG
        ;;
        c)
          STARTSWITH=${OPTARG// }
        ;;
        \?)
          exit 1;
        ;;
      esac
  done


  if [ "$PORT" -eq "$PORT" ] 2>/dev/null; then

    lsof -i:$PORT
    echo Killing \":$PORT\"
    #kill $(lsof -t -i:$PORT) || kill $(sudo lsof -t -i:$PORT) || sudo kill $(sudo lsof -t -i:$PORT) || echo Process not found for \":$PORT\"
    kill $(lsof -t -i:$PORT) || echo Process not found for \":$PORT\"

  elif [ -n "$PORT" ]; then

    echo Option should be an int, not \"$PORT\"

  fi

  if [ -z "$PORT" ] && [ -n "$STARTSWITH" ]; then

    lsof -c $STARTSWITH
    echo Killing process\(es\) starting with \"$STARTSWITH\"
    #kill $(lsof -t -c $STARTSWITH) || kill $(sudo lsof -t -c $STARTSWITH) || sudo kill $(sudo lsof -t -c $STARTSWITH) || echo Process not found for \"$STARTSWITH\"
    kill $(lsof -t -c $STARTSWITH) || echo Process not found for \"$STARTSWITH\"

  elif [ -z "$PORT" ]; then

    echo Option should NOT be an \"empty\" string

  fi

}
