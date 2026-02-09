//storing in a var and returning 
const add=(a,b)=>{
    return a+b;
}
//this in normal function
const person={
    name:"Khushi",
    NormalsayName:function (){
        console.log(this.name);
    },
    arrowSayName:()=>{
        console.log(this.name);
    }
}
person.NormalsayName();
person.arrowSayName();