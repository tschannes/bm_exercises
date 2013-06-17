function squareNumber(num) {
	var result = num * num;
	return result;
}

function halfNumber(num) {
	var result = num / 2;
	return result;
}

function percentOf(num1, num2) {
	var result = 100 / num1 * num2;
	console.log(num2 + " is " + result + "of" + num1);
	return result;
}

function areaOfCircle(radius) {
	var result = Math.PI * radius * radius;
	var resultRounded = parseFloat(result).toFixed(2);
	console.log = ("A circle with the radius " + radius + "will have an area of " + resultRounded);
	return resultRounded;
}

function doItAll(num){
	var store1 = halfNumber(num);
	var store2 = squareNumber(store1);
	var store3 = areaOfCircle(store2);
	var store4 = percentOf(store2, store3);
	return store4;

}
doItAll(3);
