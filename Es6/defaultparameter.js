function multiply(a = 2, b = 3) {
  return a * b;
}

console.log(multiply());       // 6 (2*3)
console.log(multiply(5));      // 15 (5*3)
console.log(multiply(5, 10));  // 50



//2nd
function randomNumber() {
  return Math.floor(Math.random() * 100);
}

function showScore(score = randomNumber()) {
  console.log(`Score is: ${score}`);
}

showScore();     // Random number
showScore(90);   // Score is: 90




 // 3rd
 function multiply(a = 2, b = 3) {
  return a * b;
}

console.log(multiply());       // 6 (2*3)
console.log(multiply(5));      // 15 (5*3)
console.log(multiply(5, 10));  // 50
