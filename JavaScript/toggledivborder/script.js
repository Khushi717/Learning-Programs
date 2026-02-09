let box = document.getElementById("myBox");
    let btn = document.getElementById("toggleBtn");

    btn.addEventListener("click", function() {
      box.classList.toggle("highlight");
    });