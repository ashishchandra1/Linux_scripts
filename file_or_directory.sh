if [ -f /bin/bash ]; then
  echo "file /bin/bash exists "
fi

if [ -d /root/monitoring ]; then
  echo "/bin/bash is a diretory "
else
  echo "/bin/bash is NOT a directory "
fi
