function countvowels(str){
    let cnt=0;
    str=str.toLowerCase();
    for(let i=0;i<str.length;i++){
        if(str[i]==='a' || str[i]==='e' ||  str[i]==='i' ||  str[i]==='o' ||  str[i]==='u')
            cnt++;
    }
    return cnt;
}
let str=prompt("Enter the string to calcuate numerb of vowels in it");
let output=countvowels(str);
console.log(output);