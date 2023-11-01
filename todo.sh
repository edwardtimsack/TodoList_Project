#!/bin/bash

    echo "Welcome To Our TodoList Application"
    echo ""
    echo "Press 1 To Add New Todo"
	echo "Press 2 To Edit Existing Todo"
	echo "Press 3 To Display All Todos"
	echo "Press 4 To Delete"
	echo "Press 5 To Search For Todo"
    read -p "Select a number to perform a task: " user_input
    
# Function to add a new todo
function add_Todo() {
    echo "Enter new todo: "
    read new_todo
    echo "$new_todo" >> todo_list.txt
    echo "You have added a new todo: $new_todo"
}




# Function to edit existing todo
# Recode using awk
function edit_Todo() {
 	read -p "Enter the todo on the todoList to edit: " recent_todo
    read -p "Enter the new todo: " updated_todo
	sed -i "s/$recent_todo/$updated_todo/ig" todo_list.txt  
}




# Function to display todo
function display_Todo() {
    echo "Todo List:"
    cat todo_list.txt

}




# Function to delete/remove todo
# function delete_Todo() {

# }




# Function to search todo
# Using grep
# function search_Todo() {

# }


# Checking_User_Input

if [ $user_input -eq 1 ]
then
add_Todo
elif [ $user_input -eq 2 ]
then
edit_Todo
elif [ $user_input -eq 3 ]
then
display_Todo
elif [ $user_input -eq 4 ]
then
delete_Todo
elif [ $user_input -eq 5 ]
then
search_Todo
else
echo "Invalid Input, Try Again"
fi
