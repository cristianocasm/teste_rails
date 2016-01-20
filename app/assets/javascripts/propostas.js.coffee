# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click, focus', 'input:text.price', ->
  $(this).maskMoney({
    prefix: 'R$ ',
    affixesStay: false,
    allowNegative: false,
    thousands: ''
    })

jQuery ->
  availableTags = [
    "Belo Horizonte",
    "Contagem",
    "Betim",
    "Vespasiano",
    "Ibirité",
    "São Paulo",
    "Rio de Janeiro",
    "Curitiba"
  ]
  $( ".cities" ).autocomplete({
    source: availableTags
    change: (event, ui) ->
      if !ui.item
        $(event.target).val("")
    focus: (event, ui) ->
      return false;
  })