echo " is it morning"

read timeofday

if [ " $timeofday" ="yes" ] ; then
echo "Good Morning"

elif ["$timeofday" ="no" ] ; then 
echo "Bad Morning"

exit 1
fi

exit 0

***************************************************
echo "Enter  password"
read trythis

while [ "$trythis" != "secret" ] ; do
   echo " Sorry ,please dont cry "
        read trythis
done
exit 0

***************************************************

foo=1
while [ "$foo" -le 20 ] ; do
   echo " Here we go again"
   foo=$(($foo+1))
done
exit 0

******************************************************

