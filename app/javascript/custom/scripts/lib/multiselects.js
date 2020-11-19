
onmount = require('onmount')

$(document).on('ready show.bs closed.bs load page:change turbolinks:load after.success.ic', function () {
  onmount();
});

let multiselects = []

onmount('.garment-attribute-select', function () {
  $(this).multiselect()
  multiselects.push(this)
});

$(document).on('change','[ic-target]',function(){
  multiselects.forEach(element => $(element).multiselect().destroy());
  multiselects = []
  setTimeout(function(){
    $('.garment-attribute-select').each( function () {
      $(this).multiselect()
      multiselects.push(this)
    });
  }, 300);
  
});
