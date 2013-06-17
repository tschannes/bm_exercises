var target = ["t", "a", "r", "g", "e", "t"];
var board = [];

function guessLetter(letter) {
	letter = letter.toLowerCase();
	for (i = 0; i < target.length; i++) {
		if (letter == target[i]) {
			board[i] = target[i];
			if(target.length===board.length){
				console.log("You have won!!!");
			}else{
				console.log("you've got one letter down. keep going");
			}
		} else if(letter == "_"){
			board[i] = "_"
			console.log("you have missed. Try once more.");
		}
	}
	console.log(board);
}
guessLetter("R");