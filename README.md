step - 0 
prepare ubuntu hvm 22.04 instance with update package and upgraded used t2.nano type instance.
![Alt text](d:/Devops-Real%20Projects/my%20proj-docs/project%203/photos/deploy%20the%20instance%20through%20terraform.PNG)

STEP 1 - BACKEND CONFIGURATION
  UPDATE UBUNTU
    sudo apt update
  UPGRADE UBUNTU
    sudo apt upgrade 

Lets get the location of Node.js software from Ubuntu repositories.
   curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -


Install Node.js on the server
Install Node.js with the command below 
   sudo apt-get install -y nodejs
Verify the node installation with the command below
   node -v 
   npm -v

   ![Alt text](d:/Devops-Real%20Projects/my%20proj-docs/project%203/photos/after%20installing%20nodejs%20and%20verfying.PNG)

Application Code Setup
Create a new directory for your To-Do project:
  mikdir Todo

Run the command below to verify that the Todo directory is created with ls command
  ls

  ![Alt text](d:/Devops-Real%20Projects/my%20proj-docs/project%203/photos/create%20TODO%20Directory%20and%20verfy%20that.PNG)

change the current directory to Todo directory by
  cd Todo

Then, you will use the command npm init to initialise your project, so that a new file named package.json will be created. This
file will normally contain information about your application and the dependencies that it needs to run. Follow the prompts 
after running the command. You can press Enter several times to accept default values, then accept to write out the package.json file by typing yes.

npm init

