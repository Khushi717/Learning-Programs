//spread op
//break into pieces
const nums=[1,2,3];
const copy=[...nums];
console.log(copy);
const combine=[...nums,...[4,5,6,5,6],...copy];
console.log(combine);


const user={
    newname:"Khushi",
    age:24,
};
const newUser={
    ...user,city:"Delhi"
};
console.log(newUser);

// const num=[1,2,3];
// function sum(a,b,c){
//     return a+b+c;
// }

// console.log(sum(...num));

// //Rest Operator
// //collect values in array
// const [first,...rest]=[10,20,30,40,50];
// console.log(first);
// console.log(rest);

// const {newname,...others}=newUser;
// console.log(newname);
// console.log(others);




// const numss=[1,2,3];
// function add(a,b,c){
//     return a+b+c;
// }
// console.log(add(...numss));

