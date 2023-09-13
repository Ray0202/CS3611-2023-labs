# <center>Report</center>

<center> 翁牧言 521030910007</center>

## 1

​	With the socket programming, we can build a chatting room with a center.

​	The basic idea is that user send the message and the receiver to the center, namely h5. Then h5 send it to the correct receiver.

​	We should notice that the forms of these two messages are different, which we have to transfer it.

​	The basic coding frame is from the guide https://beej-zhcn.netdpi.net/client-server_basic/jian_dan_de_stream_server and https://beej-zhcn.netdpi.net/client-server_basic/jian_dan_de_stream_client.

![屏幕截图 2023-05-06 202637](E:\lessons\大二下\计算机网络\lab\lab3\pic\屏幕截图 2023-05-06 202637.png)

## 2

​	When it turns to no center, every message will be sent to the broadcast address 10.255.255.255 and then broadcast it to reach the receiver.

​	The basic coding frame is given on https://beej-zhcn.netdpi.net/advanced_tech/guang_bo_feng_bao_ff1a_hello_world.

![屏幕截图 2023-05-06 210649](E:\lessons\大二下\计算机网络\lab\lab3\pic\屏幕截图 2023-05-06 210649.png)

