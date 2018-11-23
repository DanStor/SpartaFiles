console.log(document.body);

var buttons = document.getElementsByClassName('myButtons');
for (button of buttons) {
  button.addEventListener("click",function() {
    console.log(this.value + ' was clicked init.');
  })
}
