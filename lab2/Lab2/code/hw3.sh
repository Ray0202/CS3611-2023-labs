#!/bin/sh
sudo ovs-ofctl add-flow s1 in_port=1,actions=2,3,4
sudo ovs-ofctl add-flow s1 in_port=2,actions=1,3,4
sudo ovs-ofctl add-flow s1 in_port=3,actions=2,1,4
sudo ovs-ofctl add-flow s1 in_port=4,actions=2,3,1
sudo ovs-ofctl add-flow s2 in_port=1,actions=2,3
sudo ovs-ofctl add-flow s2 in_port=2,actions=1,3
sudo ovs-ofctl add-flow s2 in_port=3,actions=2,1
sudo ovs-ofctl add-flow s3 in_port=1,actions=2,3
sudo ovs-ofctl add-flow s3 in_port=2,actions=1,3
sudo ovs-ofctl add-flow s3 in_port=3,actions=2,1
