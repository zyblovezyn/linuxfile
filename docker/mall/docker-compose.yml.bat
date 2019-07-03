version: '2'
services:
    mysql:
        image: mysql:5.7
        container_name: "mall_mysql"
        network_mode: "bridge"
        environment:
            MYSQL_ROOT_PASSWORD: "zyb12358"
            MYSQL_USER: 'root'
            MYSQL_PASS: 'zyb12358'         
        restart: always
        volumes:
            - "./mydata/mysql/db:/var/lib/mysql"
            - "./mydata/mysql/conf/my.cnf:/etc/my.cnf"
            - "./mydata/mysql/init:/docker-entrypoint-initdb.d/"
            - "./mydata/mysql/log:/var/log/mysql"
        ports:
            - "33060:3307"
 