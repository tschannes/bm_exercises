function sayMyName(name) {
    console.log('Hi, ' + name);
}
sayMyName('tonietta')

function addNumbers(num1, num2) {
    var result = num1 + num2;
  console.log(result);
}
addNumbers(1, 4)
var number = 6
addNumbers(number, 10)

function addNumbers(num1, num2) {
    var result = num1 + num2;
  return result; // Anything after this line won't be executed
  console.log('this wont be printed')
}

addNumbers(20, 30)

sayMyName(addNumbers(29, 1))

function fortunetold(time){
    console.log('You' + name + "will be" + family "when you are " + time(age) "years old.");
}

var current_year = 2013
var birth = 1984
function age(){
    var age = current_year - birth;
    console.log('this is my age ' + age)
    }


age();


var books = [{
    author: "Hitchcock",
    title: "The 39 Steps"},
      {
          author: "Jorge Luis Borges",
          title: "Bifurcado"}];


function lit(name){
for (i = 0; i < books.length; i++){
    var book = books[i];
    (if books[i] === name){
          console.log(book.author)}
	}

}




doc.getElementById()
doc.getElementsByTagName()
doc.getElementsByClassName()
doc.querySelectorAll()