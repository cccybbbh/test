#!/bin/bash
echo '======================================================================'
echo '#                        Reset Mysql data                            #'
echo '#                                                                    #'
echo '#                       author: www.sziiit.cn                        #'
echo '#                       wechat: sziiitcn                             #'
echo '======================================================================'
#docker cp ./sm.sql mysql:/tmp/
docker exec -i db chmod 644 /etc/mysql/conf.d/mysql.cnf
docker exec -i db mysql -uroot -p123456 <<< "drop database sm;"
docker exec -i db mysql -uroot -p123456 <<< "CREATE DATABASE IF NOT EXISTS sm DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;use sm;source /tmp/sm.sql;"
echo "Data imported successfully"
