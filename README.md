#Step - 0 
prepare ubuntu hvm 22.04 instance with update package and upgraded used t2.nano type instance.

![deploy the instance through terraform](https://user-images.githubusercontent.com/96633325/226395866-b3e54fbc-eae0-498b-af19-2163a9367617.PNG)



#STEP 1 - BACKEND CONFIGURATION

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

#Step 2 - INSTALL EXPRESSJS

To use express, install it using npm
  npm install express

Then, create file index.js use command below
  touch index.js
Run the ls to confirm that your index.js file successfully created

Install the dotenv module

npm install dotenv

open the index.js file suing command below

  vim index.js
  
  see the steps in the picture below
  ![install expressjs](https://user-images.githubusercontent.com/96633325/226419427-86bddb00-a34f-43b8-a024-c8373f636726.PNG)
  
  
  then type the command below
  
  ![commands ](https://user-images.githubusercontent.com/96633325/226419745-7fe8cbff-c445-491f-82e0-54bc2121929d.PNG)
  
  Notice that we have mentioned to use port 5000 in the code. This will be required later when we go on the browser
  Now, we have to run the server by command below
   node index.js
![run server](https://user-images.githubusercontent.com/96633325/226420498-85db29e5-7bcd-4497-95a9-77a5cbece505.PNG)

Make sure the inbound rule in the security group of instance port 5000 added

![add port for instance](https://user-images.githubusercontent.com/96633325/226421377-d5d975e1-07a5-407c-8d88-3b707e08ad02.PNG)

Now browse by either Public DNS name or Ip address with port 5000

![browser](https://user-images.githubusercontent.com/96633325/226422101-e84b48cf-6b9e-4f57-a0b2-b2bf17322dd0.PNG)

#Step-3  Routes

There are three actions that our To-Do application needs to be able to do:

1. Create a new task
2. Display list of all tasks
3. Delete a completed task


Each task will be associated with some particular endpoint and will use different standard HTTP request methods: POST, GET, DELETE.

For each task, we need to create routes that will define various endpoints that the To-do app will depend on. So let us create a
folder routes

   mkdir routes
see steps below


![create api js](https://user-images.githubusercontent.com/96633325/226423972-cd51ad42-4980-41cb-86e9-bc7865370d86.PNG)

#MODELS

To create schema and model, we have to install mangoose which is Node.js package that making with mangodb easier
Now get back to Todo directory and then install mangoose
   npm install mangoose 
   
create new folder models
  mkdir models
get into directory by
  cd models
inside the directory models create file todo.js
   touch todo.js
   
 
![install mangoose and create todo js](https://user-images.githubusercontent.com/96633325/226432638-18fb476e-e8f4-4980-ae8b-8b630efe6165.PNG)


Now we need to update our routes from the file api.js in ‘routes’ directory to make use of the new model.

![update routes](https://user-images.githubusercontent.com/96633325/226433478-af7001ca-9830-4265-833d-52e98da3f05c.PNG)

#STEP 4 - MONGODB DATABASE


![mangodb](https://user-images.githubusercontent.com/96633325/226439381-28b22b70-88f2-4e85-84ca-073010faff25.PNG)

then click on cluster and click on collection and then add myown data



![add myown data](https://user-images.githubusercontent.com/96633325/226439956-f6bf27cd-3ef7-47ba-85a5-d080849f2803.PNG)

In the index.js file, we specified process.env to access environment variables, but we have not yet created this file. So we need 
to do that now.

Create a file in your Todo directory and name it .env.

then add in the file 
DB = mongodb+srv://<username>:<password>@<network-access>.lx2pegb.mongodb.net/?retryWrites=true&w=majority

check the connection api get or post through POSTMAN


![check connection using postman](https://user-images.githubusercontent.com/96633325/226459587-38c3f89b-cec4-4276-bb67-df17ed9fac06.PNG)
