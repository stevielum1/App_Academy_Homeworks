//Phase 1 - JS Fundamentals
function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//in block
//in block

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//in block
//out of block

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//SyntaxError: Identifier 'x' has already been declared

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//in block
//out of block

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}
//SyntaxError: Identifier 'x' has already been declared

function madLib(verb, adjective, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`);
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

//Phase 2 - JS Looping Constructs
function fizzBuzz(array) {
  let result = [];
  for (let i = 0; i < array.length; i++) {
    if ((array[i] % 3 === 0) && (array[i] % 5 === 0)) {
    } else if (array[i] % 3 === 0) {
      result.push(array[i]);
    } else if (array[i] % 5 === 0) {
      result.push(array[i]);
    }
  }
  return result;
}

function isPrime(number) {
  if (number < 2) {
    return false
  } else {
    for (let i = 2; i < number; i++) {
      if (number % i == 0) {
        return false
      }
    }
  }
  return true
}

function firstNPrimes(n) {
  let count = 0;
  let result = [];
  let number = 1;

  while (count < n) {
    if (isPrime(number)) {
      result.push(number);
      count++;
    }
    number++;
  }
  return result;
}

function sumOfNPrimes(n) {
  let primes = firstNPrimes(n);
  let sum = 0;
  for (let i = 0; i < primes.length; i++) {
    sum += primes[i];
  }
  return sum;
}
