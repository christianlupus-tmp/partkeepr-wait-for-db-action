#! /bin/bash

echo Hello world

mysql --host=mariadb --port=3307 --protocol=tcp -u partkeepr -ppartkeepr partkeepr_test << EOF
SHOW DATABASES;
EOF
