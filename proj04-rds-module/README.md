1. Understand the RDS resource and which necessary resources we need
2. Create a module with the standard structure
3. Implement variable validation
4. Implement networking validation
    4.1 Receive subnet ids and security group ids via variables
    4.2 For subnets: 
        4.2.1 Make sure that they are not in the default vpc 
        4.2.2 Make sure that they are private:
            4.2.2.1 Check if they are tagged with Access=Private
    4.3 For security groups:
        4.3.1 Make sure that there are no inbound rules for IP addresses
5. Create the necessary resources and make sure validation is working
6. Create the RDS instance inside of the module