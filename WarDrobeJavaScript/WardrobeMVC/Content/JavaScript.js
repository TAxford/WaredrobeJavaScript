/*Funtion to input users name into Title Welcoming them to the Waredrobe */
function Greeting() {
    var x = document.getElementById("jumboMain");    
    var userResponse = prompt('Welcome to the Waredrobe. What is your name?');
    //alert(userResponse)
    x.getElementsByTagName('h1')[0].innerText = "Welcome to the Wardrobe " + userResponse;
    //alert(userResponse)
}


/*Function to allow usered to hover over Navagation bar and change text color and size*/
function overNText(x) {
    x.style.backgroundColor = "Red";
    x.style.color = "black";   
    x.style.fontSize = "30px"
}
function outNText(x) {
    x.style.backgroundColor = "black";
    x.style.color = "Yellow";    
    x.style.fontsize ="10px"
}

/*Function to change copy right in footer*/
function overText(x){
    x.innerText = "created by Timothy Joe Axford II"
}

function outText(x){
    x.innerText = "&copy; @DateTime.Now.Year - AXFORD X CO";
}

/*Function to remove wardrobe and replace with a pile of clothes*/
function overPhoto(x){
    var image = document.getElementById("hover");
    image.onmouseover = function () { image.src = "/Content/Images/Clothes Mess.jpg'"; }
}

/*Function asking user to comfirm they want to change pages*/
window.addEventListener("beforeunload", function (e) {
    var confirmationMessage = 'It looks like you are changing pages.'
        + 'If you want to cancel, please press cancel';

    (e || window.event).returnValue = confirmationMessage; //Gecko + IE
    return confirmationMessage; //Gecko + Webkit, Safari, Chrome etc.
});