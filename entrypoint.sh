#! /bin/bash

echo Hello world

mysql -u partkeepr -ppartkeepr partkeepr_test -h mariadb -P 3307 << EOF
SHOW DATABASES;
EOF
