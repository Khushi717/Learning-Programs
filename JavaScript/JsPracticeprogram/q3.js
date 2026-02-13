//copy and update an object using the spread operator 
const user={
    newname:"Khushi",
    age:24,
};
const newUser={
    ...user,
    newname:"none",
    city:"Delhi"
};
console.log(newUser);
