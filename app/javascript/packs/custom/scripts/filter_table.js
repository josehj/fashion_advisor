
onmount = require('onmount')

$(document).on('ready show.bs closed.bs load page:change turbolinks:load after.success.ic', function () {
  onmount();
});

window.addEventListener('popstate', function (event) {
	multiselects = []
});


onmount('#filter-objects', function () {
  $(this).on("keyup", function() {
    // Retrieve the input field text and reset the count to zero
    var filter = $(this).val()
    const words = filter.replace(/\s+/g, ' ').trim().toLowerCase().split(' ');

    
    $('.to-filter').each(function() {
      const text = $(this).data('text').replace(/\s+/g, ' ').toLowerCase();

      if ( words.every(function (word) { return text.indexOf(word) !== -1 })) {
        $(this).show(); 
      } else {
        $(this).hide();
      }

    });

  });
});