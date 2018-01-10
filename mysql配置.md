## mysql remote connection configuration。

ubuntu 16.04  到mysql配置文件/etc/mysql/mysql.conf.d/mysqld.cnf 将bind-address 从127.0.0.1 改为0.0.0.0(或者指定ip)

**skip-networking **: 如果设置了该参数项，将导致所有TCP/IP端口没有被监听,也就是说出了本机，其他客户端都无法用网络连接到本mysql服务器，所以**应该注释掉该参数**

再进入mysql -uroot -p

```mysql
grant all privileges on 库名.表名 to '用户名'@'IP地址' identified by '密码' with grant option;
flush privileges;
```

重启一下mysql服务器就可以试下远程连接数据库是否成功
