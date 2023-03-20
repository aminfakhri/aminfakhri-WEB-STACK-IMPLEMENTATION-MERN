﻿Step - 0 
prepare ubuntu hvm 22.04 instance with update package and upgraded used t2.nano type instance.

![deploy the instance through terraform](https://user-images.githubusercontent.com/96633325/226395866-b3e54fbc-eae0-498b-af19-2163a9367617.PNG)



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

   ![after installing nodejs and verfying](https://user-images.githubusercontent.com/96633325/226395991-a97f5515-ede9-4310-84ef-29c98f442abe.PNG)


Application Code Setup
Create a new directory for your To-Do project:
  mikdir Todo

Run the command below to verify that the Todo directory is created with ls command
  ls

  ![create TODO Directory and verfy that](https://user-images.githubusercontent.com/96633325/226396077-29da9b3f-49d5-4bf3-a3ab-eed87b50be50.PNG)


change the current directory to Todo directory by
  cd Todo

Then, you will use the command npm init to initialise your project, so that a new file named package.json will be created. This
file will normally contain information about your application and the dependencies that it needs to run. Follow the prompts 
after running the command. You can press Enter several times to accept default values, then accept to write out the package.json file by typing yes.

npm init

