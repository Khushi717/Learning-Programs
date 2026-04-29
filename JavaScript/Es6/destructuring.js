// //array destructuring
// const numbers=[10,20,30];
// const [a, , c]=numbers;
// console.log(a);//10
// //set default values
// const [p,q,r=100]=[1,2];
// console.log(r)//100




// //object destructuring 
// const user={
//     n:"Khushi",
//     age:25,
//     city:"Delhi",
// };



// //destrucuting in function parameters
// const {n,age}=user;
// console.log(n);

// const printUser=({n,age})=>{
//     console.log(`${n} is${age} years old`);
// };
// const User={n:"Khushi", age:25};
// printUser(User);// Khushi is 25 years old



//nested destructuring
const person={
    name:"Anjali",
    address:{
        city:"Ghaziabad",
        pin:110001,
    }
};
const {
  address: { city, pin }
} = person;

console.log(city);


// function display({ name, role }) {
//   console.log(`${name} is a ${role}`);
// }
// const employee = { name: "Raj", role: "Engineer" };
// display(employee);



// another one 
const users = [
  { name: "A", age: 25 },
  { name: "B", age: 30 }
];

const [{ name: firstUser }, { age: secondUserAge }] = users;

console.log(firstUser);      // A
console.log(secondUserAge);  // 30
