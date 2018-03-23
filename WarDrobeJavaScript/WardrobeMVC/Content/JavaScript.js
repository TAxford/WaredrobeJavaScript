/*Funtion to input users name into Title Welcoming them to the Waredrobe */
function Greeting() {
    var x = document.getElementById("jumboMain");    
    var userResponse = prompt('Welcome to the Waredrobe. What is your name?');
    alert(userResponse)
    x.getElementsByTagName('h1')[0].innerText = "Welcome to the Wardrobe " + userResponse;
    alert(userResponse)
}