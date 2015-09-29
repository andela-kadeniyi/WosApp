# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  if $('.pagination').length
    $(window).scroll ->
      $('.pagination').addClass('center')
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 200
        $('.pagination').text("Fetching more authors...")
        $.getScript(url)
    $(window).scroll()
