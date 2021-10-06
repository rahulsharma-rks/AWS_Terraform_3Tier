# AWS_Terraform_3Tier
1. Create a EC2 Instance of Ubuntu.
2. Create a terraform-install.sh file.
3. Execute the shell file: sh terraform-install.sh
4. Edit the files according to your requirement.
5. Create a SSH Key: ssh-keygen -f rahulkeypair
6. Now execute the following commands in a sequence:
    a. terraform init
    b. terraform plan
    c. terraform apply
    d. terraform destroy(Execute this command in the end, when you are done with task. It will delete all the resources which you have created.)
7. To SSH into the EC2 instance: ssh -i rahulkeypair ubuntu@public_ip_of_instance
