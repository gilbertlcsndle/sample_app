$(function() {
  function character_count(length) {
    var text = length > 1 ? 'characters' : 'character';

    $('.count').html(length + ' ' + text);

    if (length > 140) {
      $('.count').css('color', 'red');
    } else {
      $('.count').css('color', '');
    }
  }

  character_count($('#micropost_content').val().length);

  $('#micropost_content').keyup(function() {
    character_count($(this).val().length);
  });
});
