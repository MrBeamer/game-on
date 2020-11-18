import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Your one stop destination, for renting video games."],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };


