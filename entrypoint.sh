#! /bin/bash

echo Hello world

mysql -u partkeepr -ppartkeepr partkeepr_test -h mariadb --port=3307 --protocol=tcp << EOF
SHOW DATABASES;
EOF
