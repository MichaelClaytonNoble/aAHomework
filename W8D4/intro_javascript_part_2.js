function titleize(names_a, printCb){
  
  function printCb(x){
    return "Mx. " + x + " Jingleheimer Schmidt";
  }
  
  return names_a.map( x=>{ 
    titled_word = x.slice(0, 1).toUpperCase() + x.slice(1, x.length).toLowerCase();
    return printCb(titled_word);
  });
}

function Elephant(e_name, height, tricks){
  this.name = e_name;
  this.height = height;
  this.tricks = tricks;
  this.paradeHelper = (elephant) =>{
    return "elephant.name +  is trotting by!";
  }
}

Elephant.prototype.trumpet = function(){
  window.alert( this.name + " the elephant goes 'phrRRRRRRRRRRR!!!!!!!'");
}

Elephant.prototype.grow = function(){
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick){
  this.tricks.push(trick);
}

Elephant.prototype.play = function(){

  window.alert(this.name + " is " + this.tricks[Math.floor(Math.random() * this.tricks.length)]);
}


let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


herd.forEach( x => {console.log(x.paradeHelper);});