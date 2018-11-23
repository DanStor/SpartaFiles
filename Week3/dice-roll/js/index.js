document.addEventListener('DOMContentLoaded',function(){
  var button = document.getElementById('butts');
  button.addEventListener('click',function(){
    reset();
    begin();
  });
  begin();
});

function begin() {
  // Call Order
  var roll = generateNumber();
  var squares = document.getElementsByClassName('innerSquare');
  var disp = generateDisplays();
  highlightDots(squares,disp,roll);

  // Function Innards
  function generateNumber() {
    var n = Math.floor(Math.random() * 6);
    // var n = 0;
    return n;
  }

  function highlightDots(squares,displayOptions,roll) {
    var selectedDisplay = displayOptions[roll];
    console.log("selected " + selectedDisplay + " roll " + roll);
    console.log(squares);
    // console.log("HLD called");
    // console.log(sq);
    for (var i = 0; i < squares.length; i++) {
      if(selectedDisplay[i] === 1) {
        squares[i].className += ' dot';
      }
    }

  }

  function generateDisplays() {
    var s1 = [0,0,0,0,1,0,0,0,0];
    var s2 = [1,0,0,0,0,0,0,0,1];
    var s3 = [1,0,0,0,1,0,0,0,1];
    var s4 = [1,0,1,0,0,0,1,0,1];
    var s5 = [1,0,1,0,1,0,1,0,1];
    var s6 = [1,0,1,1,0,1,1,0,1];

    return [s1,s2,s3,s4,s5,s6];
  }
}

function reset() {
  var dots = document.getElementsByClassName('innerSquare');
  console.log(dots);
  for (var i = 0; i < dots.length; i++) {
    dots[i].classList.remove('dot');
    console.log(dots[i]);
    console.log("i:" + i);
  }
  // begin();
}
