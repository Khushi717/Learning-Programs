const user={
    name:"khushi",
    age:19
};
const intro=`Name: ${user.name}, Age: ${user.age>18? "Adult" : "Minor"}`;
console.log(intro.toUpperCase());
