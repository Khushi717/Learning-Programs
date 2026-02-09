let btn=document.querySelector("#btn");
btn.addEventListener("dblclick",(e)=>{
    console.log("Button was double clicked");
})
btn.addEventListener("mousedown",(e)=>{
    console.log("Mouse was pressed down");
})
btn.addEventListener("mouseup",(e)=>{
    console.log("Mouse was pressed up");
})
let div=document.querySelector("div");
div.append(btn);
div.addEventListener("mouseover",(e)=>{
    console.log("Mouseover done");
})
div.addEventListener("mouseout",(e)=>{
    console.log("Mouseout done");
})
div.addEventListener("mouseenter",(e)=>{
    console.log("Mouseenter done");
})
div.addEventListener("mouseleave",(e)=>{
    console.log("Mouseleave done");
})
div.addEventListener("mousemove",(e)=>{
    console.log("Mousemovedone");
})
div.addEventListener("contextmenu",(e)=>{
    e.preventDefault();
    console.log("context menu");
})
let input=document.querySelector("#myid");
input.addEventListener("keydown",(e)=>{
    console.log(`You pressed ${e.key}`);
})
input.addEventListener("keyup",(e)=>{
    console.log(`You released ${e.key}`);
})