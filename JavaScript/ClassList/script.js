let but=document.querySelector(".mode");
console.log(but.classList);
but.classList.add("hello");
console.log(but.classList);
but.classList.remove("hello");
console.log(but.classList);
but.classList.toggle("mode");
console.log(but.classList);
console.log(but.classList.contains("mode"));