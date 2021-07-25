# README

# todo-list-backend
This app allows users to create a todo list. Users can create a new todo list and then create, view, modify, and delete items in their list. This app is written with a Rails API backend and Javascript frontend. 

STRETCH GOALS

1. Utilizes the MVC framework: a list has many items, and an item belongs to a list
2. Building a full CRUD that includes create, read, edit, and delete
3. Using FastJsonapi to create model serializers
4. Use Javascript to connect to Rails API using fetch
5. Use fetch to implement methods that include: POST, PATCH, and DELETE

# Installation
Once inside the todolist-backend directory, run in the following order:
1. bundle install
2. rails db:create
3. rails db:migrate
4. rails s
5. Optional: to view and open the JSON data, open http://localhost:3000/api/v1/lists in the browser. 

# Next Step: todolist-frontend
Click [here](https://github.com/pjfooeve09/todolist-frontend/blob/main/README.md) to be redirected to the todolist-frontend repository and follow the steps to run the app.



