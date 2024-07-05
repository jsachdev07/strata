## Addressbook Tutorial

In this project we need to perform the CI-CD for our addressbook application developed in JAVA language.

As a high level steps we need to build the code base using maven and then perform the deployment via. ansible to an ec2 instance created using terraform

All the java code files, terraform files and ansible playbooks are provided in the repository.

Before you start make sure to perform below things manually

1. create a server from where ci-cd will be performed
2. install git, curl, wget, awscli on server
3. install Jenkins on server
4. install terraform on server
5. install ansible on server
6. create a public/private key pair 
7. copy the public and private key to /tmp so that Jenkins can read it.
8. make sure you perform "aws configure" and add your access and secret key to server
9. copy the .aws folder to /var/lib/Jenkins/.aws
10. give permission to Jenkins user to read .aws folder --> chmod +r /var/lib/Jenkins/.aws/*
11. add below setting in /etc/ansible/ansible.cfg under defaults section

```
[defaults]
host_key_checking = False
inventory = /var/lib/jenkins/inventory
private_key_file = /tmp/id_rsa
```
