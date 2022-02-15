const fullnameEl = document.querySelector('#fullname');
  const emailEl = document.querySelector('#email');
  const passwordEl = document.querySelector('#password');
  const confirmPasswordEl = document.querySelector('#confirm-password');
  const phoneNumberEl = document.querySelector('#phonenumber');

  const form = document.querySelector('#signup');


  const checkFullname = () => {

      let valid = false;

      const min = 3,
          max = 25;

      const fullname = fullnameEl.value.trim();

      if (!isRequired(fullname)) {
          showError(fullnameEl, 'Full Name cannot be blank');
      } else if (!isBetween(fullname.length, min, max)) {
          showError(fullnameEl, `Full Name must be between ${min} and ${max} characters`)
      } else {
          showSuccess(fullnameEl);
          valid = true;
      }
      return valid;
  };


  const checkEmail = () => {
      let valid = false;
      const email = emailEl.value.trim();
      if (!isRequired(email)) {
          showError(emailEl, 'Email cannot be blank');
      } else if (!isEmailValid(email)) {
          showError(emailEl, 'Email is not valid')
      } else {
          showSuccess(emailEl);
          valid = true;
      }
      return valid;
  };

  const checkPassword = () => {
      let valid = false;


      const password = passwordEl.value.trim();

      if (!isRequired(password)) {
          showError(passwordEl, 'Password cannot be blank');
      } else if (!isPasswordSecure(password)) {
          showError(passwordEl, 'Password must has at least 3 characters');
      } else {
          showSuccess(passwordEl);
          valid = true;
      }

      return valid;
  };

  const checkConfirmPassword = () => {
      let valid = false;
      // check confirm password
      const confirmPassword = confirmPasswordEl.value.trim();
      const password = passwordEl.value.trim();

      if (!isRequired(confirmPassword)) {
          showError(confirmPasswordEl, 'Please enter the password again');
      } else if (password !== confirmPassword) {
          showError(confirmPasswordEl, 'The password does not match');
      } else {
          showSuccess(confirmPasswordEl);
          valid = true;
      }

      return valid;
  };


  const checkPhoneNumber = () => {

  let valid = false;

  const min = 10,
      max = 10;

  const phoneNumber = phoneNumberEl.value.trim();

  if (!isRequired(phoneNumber)) {
      showError(phoneNumberEl, 'Phone number cannot be blank');
  } else if (!isPhonenumberValid(phoneNumber)) {
      showError(phoneNumberEl, 'Phone number is not valid')
  } else {
      showSuccess(phoneNumberEl);
      valid = true;
  }
  return valid;
  };


  const isPhonenumberValid = (phonenumber) => {
      const re = /^0\d{9}$/;
      return re.test(phonenumber);
  };



  const isEmailValid = (email) => {
      const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      return re.test(email);
  };

  const isPasswordSecure = (password) => {
      const re = new RegExp("^(?=.{3,})");
      return re.test(password);
  };

  const isRequired = value => value === '' ? false : true;
  const isBetween = (length, min, max) => length < min || length > max ? false : true;


  const showError = (input, message) => {
      // get the form-field element
      const formField = input.parentElement;
      // add the error class
      formField.classList.remove('success');
      formField.classList.add('error');

      // show the error message
      const error = formField.querySelector('small');
      error.textContent = message;
  };

  const showSuccess = (input) => {
      // get the form-field element
      const formField = input.parentElement;

      // remove the error class
      formField.classList.remove('error');
      formField.classList.add('success');

      // hide the error message
      const error = formField.querySelector('small');
      error.textContent = '';
  }


  form.addEventListener('submit', function (e) {
      // prevent the form from submitting
      e.preventDefault();

      // validate fields
      let isFullnameValid = checkFullname(),
          isEmailValid = checkEmail(),
          isPasswordValid = checkPassword(),
          isConfirmPasswordValid = checkConfirmPassword();
          isPhoneNumberValid = checkPhoneNumber();

      let isFormValid = isFullnameValid &&
          isEmailValid &&
          isPasswordValid &&
          isConfirmPasswordValid &&
          isPhoneNumberValid;

      // submit to the server if the form is valid
      if (isFormValid) {
            this.submit();


      }
  });


  const debounce = (fn, delay = 500) => {
      let timeoutId;
      return (...args) => {
          // cancel the previous timer
          if (timeoutId) {
              clearTimeout(timeoutId);
          }
          // setup a new timer
          timeoutId = setTimeout(() => {
              fn.apply(null, args)
          }, delay);
      };
  };

  form.addEventListener('input', debounce(function (e) {
      switch (e.target.id) {
          case 'fullname':
              checkFullname();
              break;
          case 'email':
              checkEmail();
              break;
          case 'password':
              checkPassword();
              break;
          case 'confirm-password':
              checkConfirmPassword();
              break;
          case 'phonenumber':
              checkPhoneNumber();
              break;
      }
  }));

