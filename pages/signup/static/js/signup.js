var password = document.getElementById("password")
  , pssword_repeat= document.getElementById("pssword_repeat");

function validatePassword(){
  if(password.value != confirm_password.value) {
    pssword_repeat.setCustomValidity("Passwords Don't Match");
  } else {
    pssword_repeat.setCustomValidity('');
  }
}

password.onchange = validatePassword;
pssword_repeat.onkeyup = validatePassword;

 function phoneno(){
            $('#phone').keypress(function(e) {
                var a = [];
                var k = e.which;

                for (i = 48; i < 58; i++)
                    a.push(i);

                if (!(a.indexOf(k)>=0))
                    e.preventDefault();
            });
        }


