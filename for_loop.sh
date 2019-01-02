#!/bin/bash
for file in $(ls a*.sh); do
   echo "$file"
done
exit 0
*******************************************
## Print 1 to 100 in a sequence

#!/bin/bash
for i in {1..100}; do
  echo $i
done
******************************************
## Nested for  loop
#!/bin/bash
for i in a b c d e f g h; do
    for j in 1 2 3 4 5 6 7 8; do
        echo $i $j
    done
done

*****************************************


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
