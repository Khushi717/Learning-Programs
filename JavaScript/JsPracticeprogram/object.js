let c = {
    firstname: "Khushi",
    age: 21,
    isStudent: true
};

console.log(c.age);       // 21
console.log(c.firstname); // Khushi


let user = {
  name: "Anjali",
  greet: function () {
    console.log("Hello!");
  }
};
console.log(user.name);
user.greet();


console.log(addone(5));
function addone(num){
    return num+1;
}

console.log(addtwo(5));
let addtwo=function(num){
    return num+2;
}


