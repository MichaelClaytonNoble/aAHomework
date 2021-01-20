
const readline = require('readline');
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaTime(){
  let flag = false;
  reader.question("Would you like tea? ", function (answer1){
    console.log(answer1);
    reader.question("Would you like biscuits? ", function(answer2){
      console.log(`So you ${answer1} want tea and you ${answer2} want coffee`);
      flag = true;
    });
  });
}
// teaTime();




