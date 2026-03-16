function asyncfunc1(){
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
           console.log("data1");
            resolve("success");
        },5000);
    });
};

// function asyncfunc2(){
//     return new Promise((resolve,reject)=>{
//         setTimeout(()=>{
//             console.log("data2");
//             reject("failed");
//         },5000);
//     });
// };
// //promise chaining 
console.log("fetching data1...");
// let p1=asyncfunc1();
// p1.then((res)=>{
//     console.log("done");
//     console.log("fetching data2...");
// let p2=asyncfunc2();
// p2.catch((res)=>{
//     console.log(res);
// })
// })






// const getPromise=()=>{
// return new Promise((resolve,reject)=>{
//     console.log("I am a promise");
//     resolve("success");
//     reject("error");
// });
// };


// let promise=getPromise();
// promise.then((res)=>{
//     console.log("Promise fulfilled",res);
// })

// promise.catch((err)=>{
//     console.log("Promise rejected",err);
// })






//API always return promise
//promise chain

function getData(dataId){
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
        console.log("data",dataId);
        resolve("success");
       // reject("error");
    },5000);
    });
};

console.log("fetching data1...");
getData(1).then((res)=>{
    console.log("fething data2...");
    getData(2).then((res)=>{
        console.log(res);
    })
})
//or
console.log("fetching data1...");
getData(1).then((res)=>{
  console.log("fetching data2...");
    return getData(2);
}).then((res)=>{
    console.log(res);
});

//callback hell
function getData(dataId,getNextdata){
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
        console.log("data",dataId);
        resolve("success");
       // reject("error");
        if(getNextdata){
        getNextdata();
        }
    },5000);
    });
};


getData(1,()=>{
    getData(2);
});














function getData(dataId,getNextData){
  //2s
    setTimeout(()=>{
        console.log("data",dataId);
        if(getNextData){
        getNextData();
        }
    },2000);
}
getData(1,()=>{
  console.log("getting data2...");
  getData(2);
});