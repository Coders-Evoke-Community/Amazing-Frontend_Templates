let input=document.getElementById('answer');
let calculate=(number)=>{
input.value+=number;
}
let Result=()=>{
    try{

        input.value=eval(input.value);
    }
    catch(error){
        alert("The input is invalid, please Enter a valid input.");
    }
}
function Clear(){
    input.value=" ";
}
function del(){
    input.value=input.value.slice(0,-1);
}