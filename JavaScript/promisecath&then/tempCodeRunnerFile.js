console.log("fetching data1...");
// getData(1).then((res)=>{
//   console.log("fetching data2...");
//     return getData(2);
// }).then((res)=>{
//     console.log(res);
// });

// //callback hell
// function getData(dataId,getNextdata){
//     return new Promise((resolve,reject)=>{
//         setTimeout(()=>{
//         console.log("data",dataId);
//         resolve("success");
//        // reject("error");
//         if(getNextdata){
//         getNextdata();
//         }
//     },5000);
//     });
// };


// getData(1,()=>{
//     getData(2);
// });