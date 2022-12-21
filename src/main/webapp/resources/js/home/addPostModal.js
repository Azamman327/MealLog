const foodContainer = document.querySelector('.modalFoodContainer');
const fileName = document.getElementById('fileName');

function deleteFood(){
	console.log(event.target.parentNode)
	event.target.parentNode.remove();
}

function displayFoodList(){
	if (foodName == undefined) {
		return;
	}
	const food = `
	<div class="food">
		${foodName}
		<img src="resources/img/x.svg" onclick="deleteFood()">
	</div>`

	//console.log(food, foodContainer);
	foodContainer.insertAdjacentHTML('afterbegin', food);
	
	//request.setParameter("test", "adfs");
}

function setFoods() {
	var list = new Array();
	$("input[name=food]").each(function(index, item) {
		list.push($(item).val());
	});
	$("#foodList").val(list);
	const foodList = document.querySelector('#foodList');
	console.log(foodList);
}

file.onchange = () => {
	let path = event.target.value;
	console.log(path);
	const splitPath = path.split("\\");
	
	fileName.value = splitPath[splitPath.length - 1];
	console.log(splitPath);
};

displayFoodList();
