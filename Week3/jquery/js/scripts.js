$(document).ready(function(){
  console.log('DOM');

  addMarkDoneListener();

  // $('li').eq(2).addClass('done');

  // var count = document.getElementById('count');
  // count.innerHTML = '5'
  $('#count').html('5');

  var items = ['Feed the fish', 'Make a cup of tea', 'Learn JQuery', 'Appease the badger', 'Converse ethics with the budgie', 'Party like it\'s 1999', 'Cry silently at the cold, unforgiving nature of society', 'Despair at your arrays', 'Tame the monkeys', 'Rage against the machine!', 'Don\'t fear the reaper...', 'Defraud an orphanage out of millions of pounds'];

  $('#newitem').click(function() {
    var random = Math.floor(Math.random()*items.length);
    var item = items[random];
    addListItem(item);
  });

  function addListItem(itemText) {
    $('#list').append('<li>' + itemText + '<button type=\"button\" name=\"button\" class=\"markdone todo\">Mark As Done</button></li>');
    addMarkDoneListener();
    listCount();
  }

  $('#removeitem').click(function() {
    removeLastItem();
  });

  function removeLastItem() {
    $('li').last().remove();
    listCount();
  }

  function listCount() {
    var count = $('.todo').length;
    $('#count').html(count);
  }
  function addMarkDoneListener(){
    $('.markdone').click(function() {
      $(this).parent().addClass('done');
      $(this).removeClass('todo');
      listCount();
      $(this).remove();
    });
  }

});
