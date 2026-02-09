//  const form = document.querySelector("#myForm");
//     form.addEventListener("reset", (e) => {
//       console.log("Form is being reset!");
//       alert("Form has been cleared!"); // optional
//     });
//         form.addEventListener("submit", (e) => {
//       console.log("Form is being submitted!");
//       alert("Form has been submitted!"); // optional
//     });
    const input=document.querySelector("#myid");
        input.addEventListener("invalid", (e) => {
      console.log("Input is invalid!");
      alert("Min characters required 3"); // optional
    });
