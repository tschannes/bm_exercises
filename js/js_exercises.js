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

// exercises data structures{}

var books = [{
    author: "Hitchcock",
    title: "The 39 Steps"},
      {
          author: "Jorge Luis Borges",
          title: "Bifurcado"}];


function lit(name){
for (i = 0; i < books.length; i++){
    var book = books[i];
    if (book.author == name){
          console.log(book.author + "wrote" + book.title)}
          
    else if (book.title == name){
        console.log(book.title + " was written by " + book.author)  
    }
    else{
        console.log("nothing found")  
    }
}

}
lit("Bifurcado");


// movie library

var movies = [{
    title: "the three kings",
    duration: 90,
    stars: ["tonietta", "jackson", "cool dude"]},
    {
        title: "mickey mouse",
        duration: 60, 
        stars: ["minney", "mickey", "donald"]   
    }];
    
function mov(title){
    for(i = 0; i < movies.length; i++){
    var movie = movies[i]
    if (title == movie.title || title == movie.duration){
        console.log("The movie " + movie.title + " lasts " + movie.duration + " minutes.")
        console.log("featuring: ")
        
        for(i = 0; i < movie.stars.length; i++){
            var star = movie.stars[i];
            console.log(star);
        }
            
        }
    }  
}

mov("60")


doc.getElementById()
doc.getElementsByTagName()
doc.getElementsByClassName()
doc.querySelectorAll()