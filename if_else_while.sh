# Check for the presence of variable, if not present set something else
#!/bin/bash
if [ -z $ghprbPullId ]; then
   PRID="master"
else
  PRID=$ghprbPullId
fi
***************************************************
# A typical use of if/ elif and else
 #!/bin/bash

echo "What is the PR Status(closed/ open) ?"
read PR_STATUS
if [ "$PR_STATUS" == "closed" ]; then
    echo "********************** The Pull Request: $PRID is already merged, exiting the job **********************"
    exit 1;
elif [ "$PR_STATUS" == "open" ] || [ -z $PRID ]; then
    :
else
   echo "********************** The PR Doesn't exists, exiting the job **********************"
   exit 1;
fi

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

