let box=document.querySelector("#mode");
let body=document.querySelector("body");
box.addEventListener("click",(e)=>{
    body.classList.toggle("dark");
});