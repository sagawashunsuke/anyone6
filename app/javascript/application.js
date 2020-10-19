// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("jquery3")
require("popper")
require("bootstrap")
require("rails/ujs")
require("activestorage")
require("turbolinks")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).ready(function () {
  // DOM variables
  let languageDesktopButton = $('.extra-content__language'),
      hamburguerMenu = $('.menu'),
      languageMobileButton = $('.language'),
      languageSelector = '.extra-content__language-selector';

  languageDesktopButton.on('click', function () {
      $(this).toggleClass('is-open');

      toggleARIA($(this).find(languageSelector), 'aria-expanded');
      toggleARIA($(this).find(languageSelector), 'aria-hidden');
  });
  hamburguerMenu.on("click", function () {
      $(this).parent().parent().toggleClass('is-open');

      toggleARIA($(this).parent().parent(), 'aria-hidden');
  });

  languageMobileButton.on('click', function () {
      $(this).toggleClass('is-open');

      toggleARIA($(this), 'aria-expanded');
  });
});

// Toggle ARIA attributes
function toggleARIA(selector, ARIA) {
  selector.attr(ARIA, function (i, attr) {
      return attr == 'true' ? 'false' : 'true';
  });
}