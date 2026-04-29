//key and var are same
const name = "Khushi";
const age = 20;

// Old way
const user1 = {
  name: name,
  age: age
};

// ES6 way
const user2 = {
  name,
  age
};

console.log(user2); // { name: "Khushi", age: 20 }



//No need for the function keyword inside objects.
const user = {
  name: "Khushi",
  greet() {
    console.log(`Hello, ${this.name}`);
  }
};

user.greet(); // Hello, Khushi



//You can use dynamic values as keys by using square brackets [].
const prop = "city";
const user3 = {
  name: "Khushi",
  [prop]: "Delhi" // same as city: "Delhi"
};

console.log(user3); // { name: "Khushi", city: "Delhi" }
