#! /bin/bash

set -x

echo Hello world

echo "Waiting a few seconds for startup"

for i in `seq 1 100`
do
  mysql --host=mariadb --port=3307 --protocol=tcp -u partkeepr -ppartkeepr partkeepr_test << EOF
    SELECT version();
EOF
  if [ $? -eq 0 ]; then
    break
  fi
  
  echo "Sleeping..."
  sleep 3
done

mysql --host=mariadb --port=3307 --protocol=tcp -u partkeepr -ppartkeepr partkeepr_test << EOF
SHOW DATABASES;
EOF
