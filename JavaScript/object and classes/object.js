const student={
    fullName:"Khushi Tomar",
    marks:93.5,
    printMarks: function(){
        console.log("marks= ",this.marks);//student.marks
    }
}
//any js object have a prototype object which have its own special methods and properties
//type of array is an object 

//protopype- JS Objects have Special properties called prototype
const employee={
    calsal(){
        console.log("1000");
    }
}
const karen={
    salary:40000,
    // calsal(){
    //     console.log("2000");
    // }
}
//set prototype
//karen is accesing the properties of its prototype object(employee)
karen__proto__=employee;
//if object and prototype have same method then object method is considered
