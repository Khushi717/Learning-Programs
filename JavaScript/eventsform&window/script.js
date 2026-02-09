const form=document.querySelector("#myform");
form.addEventListener("reset",(e)=>{
    console.log("form reset.\n");
})
//  const nam= document.querySelector("#name");

//   nam.addEventListener("change", (e) => {
//     console.log("You entered: " + e.target.value);
//   });
//   const message= document.querySelector("#message");

//   message.addEventListener("change", (e) => {
//     console.log("You typed: " + e.target.value);
//   });
//   const city= document.querySelector("#city");

//   city.addEventListener("change", (e) => {
//     console.log("You selected: " + e.target.value);
//   });
const nam= document.querySelector("#name");

  nam.addEventListener("input", (e) => {
    console.log("You entered: " + e.target.value);
  });
  const message= document.querySelector("#message");

  message.addEventListener("input", (e) => {
    console.log("You typed: " + e.target.value);
  });
  const city= document.querySelector("#city");

  city.addEventListener("input", (e) => {
    console.log("You selected: " + e.target.value);
  });

  nam.addEventListener("focus", (e) => {
   console.log("input is focused");
   nam.style.backgroundColor = "#7B4019";
  });
 nam.addEventListener("blur", (e) => {
   console.log("input is blurred");
   nam.style.backgroundColor = "#FFBF78";
  });