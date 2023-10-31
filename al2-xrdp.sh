# setup xrdp and a Mate x11 gui on Amazon Linux 2

# install mate and epel. epel stands for 'extended packages for linux' required for the yum packages we install
amazon-linux-extras install mate-desktop1.x epel -y

# fuse is not mandatory but some user profile loading will fail without it. 
# chromium is a web browser. It is optional
yum install xrdp fuse chromium -y
systemctl start xrdp
systemctl enable xrdp

# without this the session ends immediately and the errors will throw you off
echo PREFERRED=/usr/bin/mate-session > /etc/sysconfig/desktop

# reset the password for the user you will login as. does not have to be ec2-user
# some research suggested password complexity is mandatory
passwd ec2-user

# now you should be able to log in with a standard windows rdp connection (TCP 3389)
# you will get the standard warning to accept the server certificate
# note that in the rdp login the user is 'ec2-user' and not 'ip-address\ec2-user'
