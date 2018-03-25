/*Funtion to input users name into Title Welcoming them to the Waredrobe */
function Greeting() {
    var x = document.getElementById("jumboMain");    
    var userResponse = prompt('Welcome to the Waredrobe. What is your name?');
    //alert(userResponse)
    x.getElementsByTagName('h1')[0].innerText = "Welcome to the Wardrobe " + userResponse;
    //alert(userResponse)
}


/*Function to change copy right in footer*/
function overText(x){
    x.innerText = "created by Timothy Joe Axford II"
}

function outText(x){
    x.innerText = "&copy; @DateTime.Now.Year - AXFORD X CO";
}
