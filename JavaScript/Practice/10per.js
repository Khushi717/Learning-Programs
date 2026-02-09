let marks=[250,645,300,900,50];
let dis;
for(let i=0;i<marks.length;i++){
    dis=(10/100)*marks[i];
        marks[i]=marks[i]-dis;
    
}
console.log(marks);