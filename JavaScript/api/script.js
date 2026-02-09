 const URL = "https://api.adviceslip.com/advice";
let advpara=document.querySelector("#advice");
    const advice = async () => {
      // console.log("getting data from API...");
      let response = await fetch(URL);
      console.log(response);
     console.log(response.status);
      let data = await response.json();
      console.log(data);
      console.log("Advice:",data.slip.advice);
      advpara.innerText=data.slip.advice;
    };
    //   console.log("Activity:", data.activity);
    let btn=document.querySelector("#btn");
btn.addEventListener("click",advice());