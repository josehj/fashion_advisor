
onmount = require('onmount')

$(document).on('ready show.bs closed.bs load page:change turbolinks:load after.success.ic', function () {
  onmount();
});

let multiselects = []

onmount('body', function () {
  multiselects.forEach(element => $(element).multiselect().destroy());
  multiselects = []
});

onmount('.garment-attribute-select', function () {
  $(this).multiselect()
  multiselects.push(this)
});

$(document).on('change','[data-form-name]',function(){
  const form_name = $(this).data('form-name');

  $.ajax({
    url: `/welcome/accepted_attributes?form_name=${form_name}`,
    type: 'GET',
    cache: false,
    data: { garment_type_id: $(this).val() }
  }).done(function(result) {
      $('#hola-soy-ic').html(result);
      multiselects.forEach(element => $(element).multiselect().destroy());
      multiselects = []
      $('.garment-attribute-select').each( function () {
        $(this).multiselect()
        console.log("aaaaa")
        multiselects.push(this)
      });
  });  
});

$(document).on('change','[data-home-search]',function(){
  $.ajax({
    url: `/welcome/accepted_sizes`,
    type: 'GET',
    cache: false,
    data: { garment_type_id: $(this).val() }
  }).done(function(result) {
      $('#search-size').html(result);
  });  
});
