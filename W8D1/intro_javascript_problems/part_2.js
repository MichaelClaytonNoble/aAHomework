

function fizzBuzz(array){

  let output_a = new Array;

  array.forEach( (el)=>{
    if (el % 5 === 0 || el % 3 === 0){
      output_a.push(el);
    }
  });
  return output_a;
}

// console.log(fizzBuzz([1,2,3,4,5,6,7,8,9,10]));


function isPrime(number){
  
  for(let i=2; i < number; i++){
    if (number % i === 0 ){
      return false;
    }
  }
  return true ;
}
// console.log(isPrime(2));
// console.log(isPrime(11));
// console.log(isPrime(25));
// console.log(isPrime(36));

function sumOfNPrimes(n){
  let sum = 0;
 
  let i = 2;
  let count = 0;
  while (count<n){
    if(isPrime(i)){
      count+=1;
      sum+=i;
    }
    i+=1;
  }

  return sum;
}

// console.log(sumOfNPrimes(0));
// > 0

// console.log(sumOfNPrimes(1));
// > 2

// console.log(sumOfNPrimes(4));
// > 17
