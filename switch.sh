echo "Is it morning ? please answer yes or no"
read timeofday

case "$timeofday" in
    yes)    echo "Good morning";;
    no)     echo "Good Afternoon";;
    y)      echo "Good Morning";;
    n)      echo " Good Afternoon";;
    *)      echo " Sorry dude";;

esac
exit 0

