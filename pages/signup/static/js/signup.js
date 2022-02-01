const email = document.getElementById('email');
const password = document.getElementById('password');
const pssword_repeat = document.getElementById('pssword_repeat');


function checkInputs() {
	// trim to remove the whitespaces
	const emailValue = email.value.trim();
	const passwordValue = password.value.trim();
	const password2Value = pssword_repeat.value.trim();


	if(emailValue === '') {
		setErrorFor(email, 'Email cannot be blank');
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid email');
	} else {
		setSuccessFor(email);
	}

	if(passwordValue === '') {
		setErrorFor(password, 'Password cannot be blank');
	} else {
		setSuccessFor(password);
	}

	if(password2Value === '') {
		setErrorFor(pssword_repeat, 'Password2 cannot be blank');
	} else if(passwordValue !== password2Value) {
		setErrorFor(pssword_repeat, 'Passwords does not match');
	} else{
		setSuccessFor(pssword_repeat);
	}
}

function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}


