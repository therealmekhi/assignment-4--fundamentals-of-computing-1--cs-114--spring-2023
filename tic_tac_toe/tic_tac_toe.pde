void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
  initGame();
  println("Welcome to Tic Tac Toe!");
  println("Press any key to start.");
}

void draw() {
  background(255);
  drawBoard();
  drawShapes();
  checkWinner();
}

void keyPressed() {
  if (gameEnded) {
    println("The game has ended. Press any key to restart.");
    initGame();
    return;
  }
  
  int move = getMove();
  if (move != -1) {
    if (board[move] == EMPTY) {
      board[move] = USER;
      currentPlayer = COMPUTER;
      println("User plays at " + move);
    } else {
      println("Invalid move. Square " + move + " is already occupied.");
    }
  } else {
    println("Invalid input. Please choose a number between 0-8.");
  }
}

void initGame() {
  board = new int[9];
  currentPlayer = COMPUTER;
  gameEnded = false;
}

void drawBoard() {
  stroke(0);
  strokeWeight(2);
  line(width/3, 0, width/3, height);
  line(width*2/3, 0, width*2/3, height);
  line(0, height/3, width, height/3);
  line(0, height*2/3, width, height*2/3);
}

void drawShapes() {
  for (int i = 0; i < 9; i++) {
    int x = (i % 3) * (width/3) + width/6;
    int y = (i / 3) * (height/3) + height/6;
    if (board[i] == USER) {
      drawCircle(x, y);
    } else if (board[i] == COMPUTER) {
      drawCross(x, y);
    }
  }
}

int getMove() {
  if (key >= '0' && key <= '8') {
    return key - '0';
  }
  return -1;
}

void checkWinner() {
  int winner = getWinner();
  if (winner == COMPUTER) {
    println("Computer wins!");
    gameEnded = true;
  } else if (winner == USER) {
    println("You win!");
    gameEnded = true;
  } else if (isBoardFull()) {
    println("No one wins!");
    gameEnded = true;
  } else if (currentPlayer == COMPUTER) {
    computerMove();
  }
}

void computerMove() {
  int move = findBestMove();
  board[move] = COMPUTER;
  currentPlayer = USER;
  println("Computer plays at " + move);
}

int getWinner() {
  for (int i = 0; i < WINNING_POSITIONS.length; i++) {
    int[] position = WINNING_POSITIONS[i];
    int a = board[position[0]];
    int b = board[position[1]];
    int c = board[position[2]];
    if (a == b && b == c) {
      if (a == COMPUTER) {
        return COMPUTER;
      } else if (a == USER) {
        return USER;
      }
    }
  }
  return 0;
}
