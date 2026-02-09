let password=document.querySelector("#password");
let strength=document.querySelector("#strength");

password.addEventListener("input",(e)=>{
    const pass=e.target.value;
    let strong="";
    if(pass.length==0){
        strong="not entered";
    }
    else if(pass.length<6){
        strong="Weak";
    }
    else if(pass.match(/[A-Za-z]/) && pass.match(/[0-9]/)){
        strong="Medium";
    }
    else if(password.match(/[A-Z]/) && password.match(/[0-9]/) && password.match(/[@#$%^&*]/) && password.length >= 8){
        strong="Strong";
    }
    strength.innerText=strong;
})