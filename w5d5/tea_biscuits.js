const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  reader.question("Do you want some tea?\n", (response) => {
    console.log(`You said ${response}\n`);
    reader.question("Do you want some biscuits?\n", (response2) => {
      console.log(`You said ${response2}\n`);

      const firstRes = (response.toLowerCase() === "yes" ? "do" : "don\'t");
      const secondRes = (response2.toLowerCase() === "yes" ? "do" : "don\'t");

      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
        reader.close();
    });
  });
}

teaAndBiscuits();
