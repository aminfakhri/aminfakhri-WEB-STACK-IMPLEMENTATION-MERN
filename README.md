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

#Step 5 - FRONTEND CREATION

In the same root directory as your backend code type 
   npx create-react-app client
   
   
![create-react-app](https://user-images.githubusercontent.com/96633325/227264672-dc2150ab-dd1e-4027-9870-f4ca49a46e2d.PNG)

This will create a new folder in your Todo directory called client, where you will add all the react code.

-Now we have to run React app
efore testing the react app, there are some dependencies that need to be installed.
npm install concurrently --save-dev



![Install concurrently](https://user-images.githubusercontent.com/96633325/227265572-29d1502d-2314-4b42-93e1-c326854de266.PNG)

Install nodemon. It is used to run and monitor the server. If there is any change in the server code, nodemon will restart it 
automatically and load the new changes.

npm install nodemon --save-dev



![install nodemon](https://user-images.githubusercontent.com/96633325/227266043-12ab6c0b-82fa-43c3-bc6e-5e1caf703ba9.PNG)

In Todo folder open the package.json file. Change the highlighted part of the below screenshot and replace with the code below.
![highlaited script](https://user-images.githubusercontent.com/96633325/227267893-95a81c19-b437-4be5-b706-965114ee2349.PNG)


![replacing code](https://user-images.githubusercontent.com/96633325/227267454-4449dbf9-9415-4466-84da-16549410469f.PNG)
Configure Proxy in package.json
1. Change directory to ‘client’

    cd client

2. Open the package.json file

     vi package.json
     
   Add the key value pair in the package.json file "proxy": "http://localhost:5001".
The whole purpose of adding the proxy configuration in number 3 above is to make it possible to access the application directly 
from the browser by simply calling the server url like http://localhost:5001 rather than always including the entire path like
http://localhost:5001/api/todos

![add proxy](https://user-images.githubusercontent.com/96633325/227269794-e513419a-dfe0-411c-977d-3d724dc99f47.PNG)

Now, ensure you are inside the Todo directory, and simply do:

```
npm run dev
```

Your app should open and start running on localhost:5001

Important note: In order to be able to access the application from the Internet you have to open TCP port 3000 on EC2 by adding a 
new Security Group rule. You already know how to do it.

Creating your React Components
One of the advantages of react is that it makes use of components, which are reusable and also makes code modular. For our Todo app, 
there will be two stateful components and one stateless component.
From your Todo directory run


```
cd client
```

move to the src directory

```
cd src
```

Inside your src folder create another folder called components

```
mkdir components
```

Move into the components directory with

```
cd components
```

Inside ‘components’ directory create three files Input.js, ListTodo.js and Todo.js.

```
touch Input.js ListTodo.js Todo.js
```

Open Input.js file

```
vi Input.js
```

Copy and paste the following

```
import React, { Component } from 'react';
import axios from 'axios';

class Input extends Component {

state = {
action: ""
}

addTodo = () => {
const task = {action: this.state.action}

    if(task.action && task.action.length > 0){
      axios.post('/api/todos', task)
        .then(res => {
          if(res.data){
            this.props.getTodos();
            this.setState({action: ""})
          }
        })
        .catch(err => console.log(err))
    }else {
      console.log('input field required')
    }

}

handleChange = (e) => {
this.setState({
action: e.target.value
})
}

render() {
let { action } = this.state;
return (
<div>
<input type="text" onChange={this.handleChange} value={action} />
<button onClick={this.addTodo}>add todo</button>
</div>
)
}
}

export default Input
```


To make use of Axios, which is a Promise based HTTP client for the browser and node.js, you need to cd into your client from your
terminal and run yarn add axios or npm install axios.

Move to the src folder

```
cd ..
```

Move to clients folder

```
cd ..
```

Install Axios

```
npm install axios
```


Go to ‘components’ directory

```
cd src/components
```

After that open your ListTodo.js

```
vi ListTodo.js
```

in the ListTodo.js copy and paste the following code

```
import React from 'react';

const ListTodo = ({ todos, deleteTodo }) => {

return (
<ul>
{
todos &&
todos.length > 0 ?
(
todos.map(todo => {
return (
<li key={todo._id} onClick={() => deleteTodo(todo._id)}>{todo.action}</li>
)
})
)
:
(
<li>No todo(s) left</li>
)
}
</ul>
)
}

export default ListTodo
```


Then in your Todo.js file you write the following code

```
import React, {Component} from 'react';
import axios from 'axios';

import Input from './Input';
import ListTodo from './ListTodo';

class Todo extends Component {

state = {
todos: []
}

componentDidMount(){
this.getTodos();
}

getTodos = () => {
axios.get('/api/todos')
.then(res => {
if(res.data){
this.setState({
todos: res.data
})
}
})
.catch(err => console.log(err))
}

deleteTodo = (id) => {

    axios.delete(`/api/todos/${id}`)
      .then(res => {
        if(res.data){
          this.getTodos()
        }
      })
      .catch(err => console.log(err))

}

render() {
let { todos } = this.state;

    return(
      <div>
        <h1>My Todo(s)</h1>
        <Input getTodos={this.getTodos}/>
        <ListTodo todos={todos} deleteTodo={this.deleteTodo}/>
      </div>
    )

}
}

export default Todo;
```


We need to make little adjustment to our react code. Delete the logo and adjust our App.js to look like this.

Move to the src folder


```
cd ..
```

Make sure that you are in the src folder and run

```
vi App.js
```

Copy and paste the code below into it


```
import React from 'react';

import Todo from './components/Todo';
import './App.css';

const App = () => {
return (
<div className="App">
<Todo />
</div>
);
}

export default App;
```

After pasting, exit the editor.

In the src directory open the App.css


```
vi App.css
```

Then paste the following code into App.css:


```
.App {
text-align: center;
font-size: calc(10px + 2vmin);
width: 60%;
margin-left: auto;
margin-right: auto;
}

input {
height: 40px;
width: 50%;
border: none;
border-bottom: 2px #101113 solid;
background: none;
font-size: 1.5rem;
color: #787a80;
}

input:focus {
outline: none;
}

button {
width: 25%;
height: 45px;
border: none;
margin-left: 10px;
font-size: 25px;
background: #101113;
border-radius: 5px;
color: #787a80;
cursor: pointer;
}

button:focus {
outline: none;
}

ul {
list-style: none;
text-align: left;
padding: 15px;
background: #171a1f;
border-radius: 5px;
}

li {
padding: 15px;
font-size: 1.5rem;
margin-bottom: 15px;
background: #282c34;
border-radius: 5px;
overflow-wrap: break-word;
cursor: pointer;
}

@media only screen and (min-width: 300px) {
.App {
width: 80%;
}

input {
width: 100%
}

button {
width: 100%;
margin-top: 15px;
margin-left: 0;
}
}

@media only screen and (min-width: 640px) {
.App {
width: 60%;
}

input {
width: 50%;
}

button {
width: 30%;
margin-left: 10px;
margin-top: 0;
}
}
```


Exit

In the src directory open the index.css

```
vim index.css
```

Copy and paste the code below:

```
body {
margin: 0;
padding: 0;
font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Roboto", "Oxygen",
"Ubuntu", "Cantarell", "Fira Sans", "Droid Sans", "Helvetica Neue",
sans-serif;
-webkit-font-smoothing: antialiased;
-moz-osx-font-smoothing: grayscale;
box-sizing: border-box;
background-color: #282c34;
color: #787a80;
}

code {
font-family: source-code-pro, Menlo, Monaco, Consolas, "Courier New",
monospace;
}
```


Go to the Todo directory

```
cd ../..
```

When you are in the Todo directory run:

```
npm run dev
```

----------------------------------------------------------------------------------------------------.


