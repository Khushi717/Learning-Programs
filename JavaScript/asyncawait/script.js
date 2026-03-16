function api(){
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
            console.log("weather data");
          reject(200);
        },2000);
    });
}

async function getweatherdata(){
    await api();
    await api();
    await api();
}
//2nd
//taking id or reference giving data as a Promise
function getdata(dataId){
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
            console.log("data",dataId);
            resolve("success");
        },3000);
    });

}

async function calling(){
    console.log("fetching dataId1...");
    await getdata(1234);
     console.log("fetching dataId2...");
    await getdata(9000);
    console.log("success");
}

