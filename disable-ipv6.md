## disable ipv6. check this if network is slow on ubuntu 16.04+

[stackoverflow question](https://askubuntu.com/questions/764387/very-slow-internet-connection-on-ubuntu-16-04)  

``` sudo vim /etc/gai.conf ```  
* locate `#precedence ::ffff:0:0/96 100` and and remove the #.
* reboot
