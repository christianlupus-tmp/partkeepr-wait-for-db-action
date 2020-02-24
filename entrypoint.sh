#! /bin/bash

echo Hello world

echo "Waiting a few seconds for startup"

for i in `seq 1 50`
do
  mysql --host=mariadb --port=3306 --protocol=tcp -u partkeepr -ppartkeepr partkeepr_test << EOF 2>/dev/null
    SELECT version();
EOF
  if [ $? -eq 0 ]; then
    break
  fi
  
  echo "Sleeping..."
  sleep 3
done
