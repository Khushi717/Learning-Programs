// Write ES6 Promise that:
// Resolve after 2 seconds with success Message.
// Rejects if a condition fails
// consume the promise using then() and catch()
// Display appropriate success or error messages

function fetch_data(){
    return new Promise((resolve,reject)=>{
        let success=true;
        setTimeout(()=>{
            if(success){
                resolve("Succeeded")
            }
            else{
                reject("Failed")
            }
        },2000)
    }).then(()=>{
        console.log("Succeeded")
    }).catch(()=>{
        console.log("Failed")
    })
}

console.log("Data coming in 2 seconds : ");
fetch_data();