import intlTelInput from 'intl-tel-input';

const initTelInput = () => {
  const input = document.querySelector("#user_phone_number");
  intlTelInput(input, {
    // any initialisation options go here
    preferredCountries: ["sg"],
    utilsScript:
      "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js",
  });
}

export { initTelInput };
