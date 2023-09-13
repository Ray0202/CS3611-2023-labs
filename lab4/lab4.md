# <center>Lab4</center>

<center> 521030910007 翁牧言</center>

## 1

My VMs' address is shown below.

VM1: 192.168.56.103

VM2: 192.168.56.104

The two commands we should add are:

```shell
sudo ovs-vsctl add-port s1 vxlan0 -- set interface vxlan0 type=vxlan options:remote_ip=192.168.56.104
```

```shell
sudo ovs-vsctl add-port s2 vxlan0 -- set interface vxlan0 type=vxlan options:remote_ip=192.168.56.103
```

From Figure1, we can see that 10.0.0.1 can connect to 10.0.0.2.

![image-20230517004202298](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230517004202298.png)

<center>Figure 1</center>



## 2

​	Using Wireshark to monitor the interfaces s1 and enp0s8, we can know that VXLAN uses ICMP and ARP.

![image-20230517005207250](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230517005207250.png)

<center> Figure2: Monitoring s1</center>

![image-20230517005020408](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230517005020408.png)

<center> Figure 3: Monitoring enp0s8</center>

## 3

![image-20230517104525558](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230517104525558.png)

<center> Figure 4<center>

From figure4, we can know that the bandwidth is about 62.5kbps. It's too small and it's probably caused by the limited MTU size.



## 4

### 4.1

​	We can designate the MTU size of iperf3 by `iperf -c 10.0.0.4 -M 1000`, we can learn from figure 5 that the bandwidth is improved to 2.5Gps.

​	This command attempt to set the TCP maximum segment size (MSS). The MSS is usually the MTU - 40 bytes for the TCP/IP header. But this time we have to spend 50 bytes for VXLAN, so we should set it to be smaller than 1410.

![image-20230517105844116](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230517105844116.png)

<center> Figure 5<center>

### 4.2

​	We can designate the MTU of the two enp0s8 interfaces by the command `sudo ip link set mtu <MTU-SIZE> dev enp0s8`, and we set it to be 9000.

​	From Figure 7 we can see that the Bandwidth is improved to 3.8Gps.

![image-20230517112745733](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230517112745733.png)

<center> Figure 6<center>

![image-20230517112729286](C:\Users\wmy\AppData\Roaming\Typora\typora-user-images\image-20230517112729286.png)

<center> Figure 7<center>