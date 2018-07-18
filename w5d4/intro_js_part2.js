//Phase 1 Callbacks
function titleize(array, callback) {
  let names = array.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(names);
}

function printCallback(array) {
  array.forEach((name) => {
    console.log(name);
  })
}

//Phase 2 Constructors, Prototypes, and this
function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function() {
  let trick = this.tricks[ Math.floor(Math.random() * this.tricks.length) ];
  console.log(`${this.name} is ${trick}`);
}
