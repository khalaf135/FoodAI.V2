document.getElementById('foodQuiz').addEventListener('submit', function(event) {
    event.preventDefault();
    var sweetValue = document.querySelector('input[name="sweet"]:checked').value;
    var healthyValue = document.querySelector('input[name="healthy"]:checked').value;
    var snackValue = document.querySelector('input[name="snack"]:checked').value;

if (sweetValue == 'Yes' && healthyValue == 'Yes' && snackValue == 'Yes') {
    window.location.href = 'Recepies/Peanut_Butter_Energy_Balls.html';
}
else if (sweetValue == 'Yes' && healthyValue == 'Yes' && snackValue == 'No') {
    window.location.href = 'Recepies/Sweet_Potato_and_Chickpea_Buddha.html';
}
else if (sweetValue == 'Yes' && healthyValue == 'No' && snackValue == 'Yes') {
    window.location.href = 'Recepies/Chocolate_Cake.html';
}
else if (sweetValue == 'Yes' && healthyValue == 'No' && snackValue == 'No') {
    window.location.href = 'Recepies/French_Toast_with_a_Sweet_Berry.html';
}
else if (sweetValue == 'No' && healthyValue == 'No' && snackValue == 'No') {
    window.location.href = 'Recepies/Red_Pasta.html';
}
else if (sweetValue == 'No' && healthyValue == 'Yes' && snackValue == 'No') {
    window.location.href = 'Recepies/Grilled_Salmon.html';
}
else if (sweetValue == 'No' && healthyValue == 'No' && snackValue == 'Yes') {
    window.location.href = 'Recepies/Cheese_Stuffed.html';
}
else if (sweetValue == 'No' && healthyValue == 'Yes' && snackValue == 'Yes') {
    window.location.href = 'Recepies/Avocado_Chickpea.html';
}
});

