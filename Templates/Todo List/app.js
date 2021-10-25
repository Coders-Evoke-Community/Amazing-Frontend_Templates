//Selectors
const todoInput = document.querySelector('.todo-input');
const todoButton = document.querySelector('.todo-button');
const todoList = document.querySelector('.todo-list');
const filterOption=document.querySelector('.filter-todo');


//Event Listeners
todoButton.addEventListener('click',addTodo);
todoList.addEventListener('click',deleteCheck);
filterOption.addEventListener('click',filterTodo);
document.addEventListener("DOMContentLoaded",getTodos);
;

//Functions
function addTodo(event){
    //prevents event form from submitting
    event.preventDefault();
    //todo div 
    const todoDiv=document.createElement('div');
    todoDiv.classList.add("todo");
    //create list element
    const newTodo=document.createElement('li');
    newTodo.innerText=todoInput.value;
    newTodo.classList.add('todo-item');
    todoDiv.appendChild(newTodo);
    //addtodo to local localStorage
    saveLocalTodos(todoInput.value);
    //check mark Button
    const completedButton=document.createElement('button');
    completedButton.innerHTML='<i class="fas fa-check"></i>';
    completedButton.classList.add("complete-btn");
    todoDiv.appendChild(completedButton);
    //trash button
    const trashButton=document.createElement('button');
    trashButton.innerHTML='<i class="fas fa-trash"></i>';
    trashButton.classList.add("trash-btn");
    todoDiv.appendChild(trashButton);
    //append div to list of tasks
    todoList.appendChild(todoDiv);
    //clear todo input value 
    todoInput.value="";
}

function deleteCheck(e){
    const item = e.target;
    //delete Todo 
    if (item.classList[0] === 'trash-btn'){
        const todo=item.parentElement;
        //Animation
        todo.classList.add("fall");
        removeLocalTodos(todo);
        todo.addEventListener('transitionend',function(){
            todo.remove();
    });
   }
    //Check Mark
    if(item.classList[0]==="complete-btn"){
        const todo=item.parentElement;
        todo.classList.toggle("completed");
    }
}

function filterTodo(e){
    const todos=todoList.childNodes;
    todos.forEach(function(todo){
        switch(e.target.value){
            case "all":
                todo.style.display="flex";
                break;
            case "completed":
                if(todo.classList.contains("completed")){
                    todo.style.display="flex";
                }    
                else{
                    todo.style.display="none";
                }
                break;
            case "uncompleted":
                if(!todo.classList.contains('completed')){
                    todo.style.display="flex";
                } 
                else{
                    todo.style.display="none";
                }   
              
                break;
        }
    });
}

function saveLocalTodos(todo){
    // Check if previous storage present
    let todos;
    if(localStorage.getItem('todos')===null){
        todos=[];
    }
    else{
        todos=JSON.parse(localStorage.getItem('todos'));
    }
    todos.push(todo);localStorage.setItem("todos",JSON.stringify(todos));
}

function getTodos(){
    let todos;
    // Check if previous storage present
    if(localStorage.getItem('todos')===null){
        todos=[];
    }
    else{
        todos=JSON.parse(localStorage.getItem('todos'));
    }
    todos.forEach(function(todo){
            //todo div 
            const todoDiv=document.createElement('div');
            todoDiv.classList.add("todo");
            //create list element
            const newTodo=document.createElement('li');
            newTodo.innerText=todo;
            newTodo.classList.add('todo-item');
            todoDiv.appendChild(newTodo);
            //check mark Button
            const completedButton=document.createElement('button');
            completedButton.innerHTML='<i class="fas fa-check"></i>';
            completedButton.classList.add("complete-btn");
            todoDiv.appendChild(completedButton);
            //trash button
            const trashButton=document.createElement('button');
            trashButton.innerHTML='<i class="fas fa-trash"></i>';
            trashButton.classList.add("trash-btn");
            todoDiv.appendChild(trashButton);
            //append div to list of tasks
            todoList.appendChild(todoDiv);
    });
}

function removeLocalTodos(todo){
    let todos;
    // Check if previous storage present
    if(localStorage.getItem('todos')===null){
        todos=[];
    }
    else{
        todos=JSON.parse(localStorage.getItem('todos'));
    }
    const todoIndex=todo.children[0].innerText;
    todos.splice(todos.indexOf(todoIndex),1);
    localStorage.setItem('todos',JSON.stringify(todos));
}