document.addEventListener('DOMContentLoaded', function(){
  // Global Variables
  var boxes = document.getElementsByTagName('td');
  var turnText = document.getElementsByClassName('playerTurn')[0];
  var scores = document.getElementById('pScore');

  var enabled = true;
  var p1Turn = true;

  var Wins1 = 0;
  var Wins2 = 0;

  var posArray = [0,0,0,0,0,0,0,0,0];
  var winConditions = [ [0,1,2],
                        [3,4,5],
                        [6,7,8],
                        [0,3,6],
                        [1,4,7],
                        [2,5,8],
                        [0,4,8],
                        [2,4,6] ];
  // Run Order
  addPieceListener();
  addResetListener();

  // Code Innards
  function addPieceListener() {
    for (box of boxes) {
      box.addEventListener('click',addPiece);
    }
  }

  function addResetListener() {
    var resetButton = document.getElementById('reset');
    resetButton.addEventListener('click',resetBoard);
  }

  function addPiece() {
    if(enabled){
      if(this.innerHTML.length === 0) {
        // console.log('Piece added to ' + this.name);
        if(p1Turn) {
          this.classList.add('X');
          this.innerHTML = "X";
          turnText.innerHTML = "It is O's turn";
        } else {
          this.classList.add('O');
          this.innerHTML = "O";
          turnText.innerHTML = "It is X's turn";
        }
        addToPosArray(this);
        var victor = checkWinCondition();
        if(victor !== 0) {
          if(victor === 1) {
            turnText.innerHTML = "Player " + victor + " wins!";
            Wins1++;
          } else if(victor === 2) {
            turnText.innerHTML = "Player " + victor + " wins!";
            Wins2++;
          }
          pScore.innerHTML = "X: " + Wins1 + " ||==|| " + Wins2 + ":Y";
          enabled = false;
        }
        p1Turn = !p1Turn;
      }
    }
  }

  function checkWinCondition() {
    var winner = containsAll();
    return winner;
  }

  function addToPosArray(clicked) {
    var dnum = clicked.getAttribute('data-num');
    if (p1Turn) {
      posArray[dnum] = 1;
    } else {
      posArray[dnum] = 2;
    }
    // console.log(posArray);
  }

  function containsAll() {
    for (winCon of winConditions) {
      var p1Count = 0;
      var p2Count = 0;
      for (item of winCon) {
        if(posArray[item] === 1) {
          p1Count++;
        }
        else if(posArray[item] === 2) {
          p2Count++;
        }
      }

      if(p1Count >= 3) {
        return 1;
      } else if(p2Count >= 3) {
        return 2;
      }
    }
    return 0;
  }

  function resetBoard() {
    for (box of boxes) {
      box.classList.remove('X');
      box.classList.remove('O');
      box.innerHTML = "";
      p1Turn = true;
      enabled = true;
      posArray = [0,0,0,0,0,0,0,0,0];
    }
    turnText.innerHTML = "It is X's turn";
  }
})
