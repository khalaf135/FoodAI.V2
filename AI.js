document.getElementById('foodQuiz').onsubmit = function (event) {
    // Prevent the form from submitting
    event.preventDefault();


    var sweetValue = document.querySelector('input[name="sweet"]:checked').value;
    var healthyValue = document.querySelector('input[name="healthy"]:checked').value;
    var spicyValue = document.querySelector('input[name="spicy"]:checked').value;
    var vegetarianValue = document.querySelector('input[name="vegetarian"]:checked').value;
    var snackValue = document.querySelector('input[name="snack"]:checked').value;
    // Display the answer in the paragraph with id="answer_q1"
    if (sweetValue == 'No') {
        document.getElementById('answer_q1').textContent = 'Not sweet';
    }
    else if (sweetValue == 'Yes') {
        document.getElementById('answer_q1').textContent = 'Sweet';

    }
    if (healthyValue == 'No') {
        document.getElementById('answer_q2').textContent = 'Not healty';
    }
    else if (healthyValue == 'Yes') {
        document.getElementById('answer_q2').textContent = 'Healty';

    }
    if (spicyValue == 'No') {
        document.getElementById('answer_q3').textContent = 'Not Spicy';
    }
    else if (spicyValue == 'Yes') {
        document.getElementById('answer_q3').textContent = 'Spicy';


    }
    if (vegetarianValue == 'No') {
        document.getElementById('answer_q4').textContent = 'Not vegetarian';
    }
    else if (vegetarianValue == 'Yes') {
        document.getElementById('answer_q4').textContent = 'Vegetarian';


    }
    if (snackValue == 'No') {
        document.getElementById('answer_q5').textContent = 'Not snack';
    }
    else if (snackValue == 'Yes') {
        document.getElementById('answer_q5').textContent = 'Snack';


    }

};
document.getElementById('foodQuiz').onreset= function(){
    document.getElementById('answer_q1').textContent = '';
    document.getElementById('answer_q2').textContent = '';
    document.getElementById('answer_q3').textContent = '';
    document.getElementById('answer_q4').textContent = '';
    document.getElementById('answer_q5').textContent = '';
}
