const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 400) {
        navbar.classList.add('navbar-white');
      } else {
        navbar.classList.remove('navbar-transparent');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

