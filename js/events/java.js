

// function libIt() {
//   var storyDiv = document.getElementById("story");
//   var name = document.getElementById("name").value;
//   var adjective = document.getElementById("adjective").value;
//   var noun = document.getElementById("noun").value;
//   storyDiv.innerHTML = name + " married a " + adjective + " " + noun + "... So weird!";
// }

// var libButton = document.getElementById('lib-button');
// libButton.addEventListener('click', libIt);


addEvent(window, 'resize', function(event) {	 
	    alert('The page has been resized');
	 
	});

addEvent(window, 'scroll', function(event) { 
	    alert('The page is being scrolled');
	});

addEvent(document.getElementById('myinput'), 'blur', function(event) {
	 
	    alert('The element lost focus (blurred)');
	 
	});