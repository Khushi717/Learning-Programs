//callback used for asynchronous operations( control sequence of exucetion of a program)
// console.log("one");
// console.log("two");
// setTimeout(()=>{
//     console.log("time out func");
// },5000);
// console.log("three");
// console.log("four");
//2nd
// function sayHi(){
//     console.log("Hi, this is callback");
// }
// function start(sayHi){
//     console.log("Starting...");
//     sayHi();
// }
// start(sayHi);
//3rd
//using setTimeout
// setTimeout(func,3000);
// function func(){
// console.log("calling after 3 seconds");
// }
//eventlistner
// let btn=document.querySelector("#mybtn");
// btn.addEventListener("click",()=>{
//     setTimeout(()=>{
//         console.log("excuted after 3 seconds after the click")
//     },3000);
// })
// //for-each
// let fruits=["Mango","Apple","Litchi"];
// fruits.forEach((fruit,index)=>{
//     console.log(index+":"+fruit);
// })
// //step-by-step cooking
// function chopVegetable(cookFood){
//     console.log("1. Chopping Vegetables");
//     cookFood(servingFood);
// }
// function cookFood(servingFood){
//     console.log("2. Cooking food");
//     servingFood();
// }
// function servingFood(){
//     console.log("3.Serving food");
// }
// chopVegetable(cookFood);
////////////////////////////////
// function firstTask(secondTask) {
//   console.log("1. Doing first task...");
//   secondTask(thirdTask);
// }

// function secondTask(thirdTask) {
//   console.log("2. Doing second task...");
//   thirdTask(fourthTask);
// }

// function thirdTask(fourthTask) {
//   console.log("3. Doing third task...");
//   fourthTask();
// }

// function fourthTask() {
//   console.log("4. Doing fourth task...");
// }

// // NESTING
// firstTask(secondTask);
//2nd way 
// function firstTask(callback) {
//   console.log("1. Doing first task...");
//   callback();
// }


// function secondTask(callback) {
//   console.log("2. Doing second task...");
//   callback();
// }

// function thirdTask() {
//   console.log("3. Doing third task...");
// }

// // // NESTING
// firstTask(() => {
//   secondTask(() => {
//     thirdTask();
//   });
// });
//callback hell apna cllg
function getData(dataId,getNextData){
  //2s
    setTimeout(()=>{
        console.log("data",dataId); //1
        if(getNextData){     //getNextData=()=>{
            getNextData();   //  console.log("getting data2...");
          }                 //  getData(2);
          },2000);          // }
            }
getData(1,()=>{
  console.log("getting data2...");
  getData(2);
});