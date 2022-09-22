function snamef(){
    let name=document.getElementById("servername")
    let error=document.getElementById("message")
    if(name.validity.patternMismatch){
        error.innerHTML="INVALID USERNAME";
    }
    else{
        error.innerHTML="";
    }
}

function matchpass(){
    var pass11=document.getElementById("pass1")
    var pass22=document.getElementById("pass2")
    var errorpass=document.getElementById("passmessage")
    if(pass11!=pass22){
        errorpass.innerHTML="Password dont match";
    }
    else{
        errorpass.innerHTML="";
    }
}

function kp(event) {
    var element = document.body;
    if (  event.ctrlKey  && event.keyCode == 77 ) {
        element.classList.toggle("dark-mode");
    } 
  }