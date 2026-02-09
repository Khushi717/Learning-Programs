let box=document.querySelector("#area");
let cnt=document.querySelector("#cnt");
box.addEventListener("input",(e)=>{
    let a=e.target.value.length;
    cnt.innerText=a;
});