let boxes=document.querySelectorAll(".box");
let resetBtn=document.querySelector("#reset-btn");
let form=document.querySelector("#main");
let msg=document.querySelector("#msg");
let newBtn=document.querySelector("#newBtn");
let msgContainer=document.querySelector(".msg-container")
let click=0;
form.addEventListener("reset",(e)=>{
    boxes.forEach((b)=>{
        click =0;
        b.innerText="";
        b.disabled=false;
        msgContainer.classList.add("hide");
    })
})
let turnO=true;//player X, player O
const winPattern=[
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6],
];
boxes.forEach((box)=>{
    box.addEventListener("click",(e)=>{
        console.log("Box was clicked");
        click++;
        console.log(click);
        if(turnO){
            box.innerText="O";
            turnO=false;
        }
        else{
            box.innerText="X";
            turnO=true;
        }
        box.disabled=true;
        const winnerFound=checkWinner();
        if(click===9 && !winnerFound){
            console.log("Draw");
            draw();
        }
     });
});
const disablebtn=()=>{
    for(let box of boxes){
        box.disabled=true;
    }
};
const draw=()=>{
    msg.innerText="Game is Draw!";
    msgContainer.classList.remove("hide");
}
const showWinner=(winner)=>{
    msg.innerText=`Congratulations! Winner is ${winner}`;
     msgContainer.classList.remove("hide");
     disablebtn();
}
const checkWinner=()=>{
    for(let pattern of winPattern){
    //    console.log(boxes[pattern[0]],boxes[pattern[1]],boxes[pattern[2]]);
    let pos1val=boxes[pattern[0]].innerText;
    let pos2val=boxes[pattern[1]].innerText;
    let pos3val=boxes[pattern[2]].innerText;
    if(pos1val!="" && pos2val!="" && pos3val!=""){
    if(pos1val===pos2val && pos2val===pos3val){
        console.log(`Winner is ${pos1val}`);
        showWinner(pos1val);
    }
}
}
}