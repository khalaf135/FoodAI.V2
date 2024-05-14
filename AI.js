document.querySelectorAll('input[type="radio"]').forEach(radio => {
    radio.addEventListener('change', function() {
        let questionSpanId = 'question_' + this.name; // Corresponding question span ID
        let questionSpan = document.getElementById(questionSpanId);
        questionSpan.textContent = questionSpan.textContent.replace(/😊|😢/g, ''); // Remove existing emoji
        questionSpan.textContent += this.value === 'Yes' ? ' 😊' : ' 😢'; // Append the correct emoji
    });
});

document.getElementById('foodQuiz').onsubmit = function (event) {
    event.preventDefault();

    var sweetValue = document.querySelector('input[name="sweet"]:checked').value;
    var healthyValue = document.querySelector('input[name="healthy"]:checked').value;
    var snackValue = document.querySelector('input[name="snack"]:checked').value;

    // Display emoji responses
    document.getElementById('answer_q1').textContent = sweetValue === 'Yes' ? '😊' : '😢';
    document.getElementById('answer_q2').textContent = healthyValue === 'Yes' ? '😊' : '😢';
    document.getElementById('answer_q3').textContent = snackValue === 'Yes' ? '😊' : '😢';

    // Redirect based on answers
    if (sweetValue == 'Yes' && healthyValue == 'Yes' && snackValue == 'Yes') {
        window.location.href = 'Recepies/Peanut_Butter_Energy_Balls.html';
    } else if (sweetValue == 'Yes' && healthyValue == 'Yes' && snackValue == 'No') {
        window.location.href = 'Recepies/Sweet_Potato_and_Chickpea_Buddha.html';
    } else if (sweetValue == 'Yes' && healthyValue == 'No' && snackValue == 'Yes') {
        window.location.href = 'Recepies/Chocolate_Cake.html';
    } else if (sweetValue == 'Yes' && healthyValue == 'No' && snackValue == 'No') {
        window.location.href = 'Recepies/French_Toast_with_a_Sweet_Berry.html';
    } else if (sweetValue == 'No' && healthyValue == 'No' && snackValue == 'No') {
        window.location.href = 'Recepies/Red_Pasta.html';
    } else if (sweetValue == 'No' && healthyValue == 'Yes' && snackValue == 'No') {
        window.location.href = 'Recepies/Grilled_Salmon.html';
    } else if (sweetValue == 'No' && healthyValue == 'No' && snackValue == 'Yes') {
        window.location.href = 'Recepies/Cheese_Stuffed.html';
    } else if (sweetValue == 'No' && healthyValue == 'Yes' && snackValue == 'Yes') {
        window.location.href = 'Recepies/Avocado_Chickpea.html';
    }
};

// Event listeners for immediate feedback on radio selection
document.querySelectorAll('input[type="radio"]').forEach(radio => {
    radio.addEventListener('change', function() {
        var answerId = 'answer_' + this.name.slice(0, -1); // Removes last character 'y' from 'healthy' or 'sweet', etc.
        document.getElementById(answerId).textContent = this.value === 'Yes' ? '😊' : '😢';
    });
});
