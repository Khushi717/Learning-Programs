const passwordInput = document.querySelector("#password");

  const uppercase = document.querySelector("#uppercase");
  const number = document.querySelector("#number");
  const special = document.querySelector("#special");
  const length = document.querySelector("#length");
  passwordInput.addEventListener("input",(e)=>{
    const val=e.target.value;
    if (/[A-Z]/.test(val)) {
      uppercase.innerText = "✅ At least one uppercase letter (A-Z)";
    } else {
      uppercase.innerText = "❌ At least one uppercase letter (A-Z)";
    }

    // Number check
    if (/[0-9]/.test(val)) {
      number.innerText = "✅ At least one number (0-9)";
    } else {
      number.innerText = "❌ At least one number (0-9)";
    }

    // Special character check
    if (/[@#$%^&*]/.test(val)) {
      special.innerText = "✅ At least one special character (@#$%^&*)";
    } else {
      special.innerText = "❌ At least one special character (@#$%^&*)";
    }

    // Length check
    if (val.length >= 8) {
      length.innerText = "✅ Minimum 8 characters";
    } else {
      length.innerText = "❌ Minimum 8 characters";
    }
  })