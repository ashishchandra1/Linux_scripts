for file in $(ls a*.sh); do
   echo "$file"
done
exit 0
******************************************
for foo in seq 1 20
echo " dude enough"
done
exit 0
*******************************************

#!/bin/bash
while true
do
    router_list=`ip netns | awk '/qr/ {print $0}'`
    router_array=($router_list)

    for router in ${router_array[@]};
       do
            ip_list=`ip netns exec $router ip a | awk '/qg/ {print $0}' | awk '/inet/ {print $2}'`
            if [[ !  -z  $ip_list  ]]; then
                 ip_array=($ip_list)
                 #echo $router : ${ip_array[0]}
                 oct1=$(echo ${ip_array[0]} | tr "." " " | awk '{ print $1 }')
                 oct2=$(echo ${ip_array[0]} | tr "." " " | awk '{ print $2 }')
                 oct3=$(echo ${ip_array[0]} | tr "." " " | awk '{ print $3 }')
                 oct4=$(echo ${ip_array[0]} | tr "." " " | awk '{ print $4 }')
                 gw_ip_addr=$oct1.$oct2.$oct3.1
                 #echo $gw_ip_addr
                 ip netns exec $router ping -c 1 $gw_ip_addr
           fi
       done
       sleep 5
done
