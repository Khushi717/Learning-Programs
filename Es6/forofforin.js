const fruits = ["apple", "banana", "mango"];

for (const fruit of fruits) {
  console.log(fruit);
}
//apple
// banana
// mango


const person = { name: "Khushi", age: 20 };

for (const key in person) {
  console.log(key, ":", person[key]);
}
// name : Khushi
// age : 20

