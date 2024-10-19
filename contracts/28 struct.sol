// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract BasicStruct{

    struct Todo{
        string nameTask;
        bool completed;
    }

    Todo[] public todos;

    function Set(string calldata _name)public{
        todos.push(Todo({
            nameTask: _name,
            completed: false
        }));
    }

    function Get(uint _index) public view returns(string memory text,bool completed){
        Todo storage todo = todos[_index];
        return (todo.nameTask,todo.completed);
    }

    function UpdateTask(uint _index,string calldata taskName)public{
        Todo storage todo = todos[_index];
        todo.nameTask = taskName;
    }

    function UpdateCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}