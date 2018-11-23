var listButton = document.getElementById('additem');
listButton.addEventListener("click", function(){
  // alert("I was clicked!");
  addListItem();
});

function doStuff() {
  document.body.children[0].innerHTML = "<h2>Select by children</h2>";

  document.body.children[1].children[0].children[0].innerHTML = "Select by children in children etc...";

  document.getElementsByClassName('selected')[0].innerHTML = "Select by class and array index";

  document.getElementsByTagName('li')[2].innerHTML = "Select by tag name and array index";

  var rejected = document.querySelectorAll('li.rejected');
  for (phrase of rejected) {
    phrase.innerHTML = "Select using querySelectorAll";
  }

  var ptag = document.createElement("p");
  ptag.innerHTML = "I'm a new p tag!!!";
  document.body.insertBefore(ptag, document.getElementById('wrapper'));

  // document.body.children[0].outerHTML = "<p>I'm a newer ptag!</p>";

  console.log(document.body);
}
function addListItem() {
  var words = formText();
  event.preventDefault();
  var lItem = document.createElement("li");
  lItem.innerHTML = words;
  document.getElementsByTagName("ul")[0].appendChild(lItem);
}
function formText() {
  return document.getElementById('newitem').value;
}
