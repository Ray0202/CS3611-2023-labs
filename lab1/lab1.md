<h1>
    <center>lab1</center>
</h1>

<center>521030910007 翁牧言</center>

## 1

* "ping" uses ICMP and "traceroute" uses UDP

![image-20230305145755929](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305145755929.png)

![image-20230305145957006](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305145957006.png)

## 2

* the IP address of www.sjtu.edu.cn is 202.120.2.119

![image-20230305150106163](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305150106163.png)

## 3

* the RTT to www.sjtu.edu.cn is 4.294ms

```
ping -c 10 www.sjtu.edu.cn
```

![image-20230305150745450](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305150745450.png)

* the RTT to stanford.edu is 170.075ms

```
ping -c 10 stanford.edu
```

![image-20230305150852006](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305150852006.png)

* The  differences of their RTTs may be caused by their servers' different distances to the VM. And the different distances may lead to different propagation delay times.

## 4

* the TCP bandwidth is 5600 Mbps

host:

```
iperf3 -c 192.168.101 -p 8888 -f m -i l
```

server:

``` 
iperf3 -e -i 2 -p 8888
```

![image-20230305152017768](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305152017768.png)

## 5

![image-20230305152601111](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305152601111.png)

## 6

* the command is 

```
scp ./abc.txt wmy@192.168.56.101:/home/wmy/test
```

![image-20230305153858773](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305153858773.png)

![image-20230305153927360](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230305153927360.png)