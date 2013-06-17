var target = ["t", "a", "r", "g", "e", "t"];
var board = [];

function guessLetter(letter) {
	for (i = 0; i < target.length; i++) {
		if (letter == target[i]) {
			board[i] = target[i];
			console.log("you've got one letter down.");
		} else if(letter == "_"){
			board[i] = "_"
			console.log("you have missed. Try once more.");
		}
	}
	console.log("This is being run.");
	console.log("You've guessed: " + board.join(""));
}
guessLetter("R");