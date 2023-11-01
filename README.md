# al2-xrdp
RDP Mate GUI on Amazon Linux 2

I had a scientist who wanted a Linux GUI and only RDP protocol and Amazon Linux 2 (AL2) were approved by the corporate security rules.
I was aware that AL2 had a MATE desktop available through Amazon Linux Extras because it is used for AWS Workspaces, however getting it 
working was FAR FAR harder than I expected. This minimal set of commands is the result of about 5 hours of debugging, testing, retrying, and removing the unnecessary. 

At the time of this writing when you search xRDP there is no site that has all of these commands on one page. Due to the difficulty I had getting this working, and all the incorrect information I found as part of this search, I thought it would be good to share this solution with the world.

As of this writing Amazon does not have a GUI package released for the AL2 successor : Amazon Linux 2023. For this problem a pure Amazon solution would be AWS AppStream or AWS Workspaces
