const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-home');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 0) {
        navbar.classList.add('navbar-home-blue');
      } else {
        navbar.classList.remove('navbar-home-blue');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
