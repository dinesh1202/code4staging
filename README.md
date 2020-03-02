# code4staging
*** The code is to launch multiple ec2 instances in different environments with different AMI image as per the regions and as per the instance-type ***

we have 3 different files here,
1.Map-ec2-type-region.tf  - 
contains code to lauch multiple ec2 instances as per the region AMI and instance type

2.Map-variables.tf - 
Interpolation file, which holds the value from the user and provides the value to required resource/variable block

3.remoteBackend.tf - 
In order to hide the sensitive information, I have used the remote backend feature in the code, so that the tfstate file can be stored in
the remote repository, so that once we commit the code to the github, other users should not be able to access the sensitive information from
the tfstate file
Here I have utilized the s3 remote backend type from AWS provider along with dynamodb loking system to lock the tfstate file if multiple
users are accessing the code same time.

Note:- We can add the VPC's as per the environments the instance will be launched in respective VPC as per the environment.

