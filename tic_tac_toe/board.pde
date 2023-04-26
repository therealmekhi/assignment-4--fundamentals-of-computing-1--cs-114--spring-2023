class board {
int[] board;
int currentPlayer;
boolean gameEnded;

int findBestMove() {
  int bestMove = -1;
  int bestScore = -1000;
  for (int i = 0; i < 9; i++) {
    if (board[i] == EMPTY) {
      board[i] = COMPUTER;
      int score = minimax(0, false);
      board[i] = EMPTY;
      if (score > bestScore) {
        bestMove = i;
        bestScore = score;
      }
    }
  }
  return bestMove;
}

int minimax(int depth, boolean isMaximizing) {
  int result = evaluate();
  if (result != 0) {
    return result;
  }
  if (isBoardFull()) {
    return 0;
  }
  if (isMaximizing) {
    int bestScore = -1000;
    for (int i = 0; i < 9; i++) {
      if (board[i] == EMPTY) {
        board[i] = COMPUTER;
        int score = minimax(depth + 1, false);
        board[i] = EMPTY;
        bestScore = max(score, bestScore);
      }
    }
    return bestScore;
  } else {
    int bestScore = 1000;
    for (int i = 0; i < 9; i++) {
      if (board[i] == EMPTY) {
        board[i] = USER;
        int score = minimax(depth + 1, true);
        board[i] = EMPTY;
        bestScore = min(score, bestScore);
      }
    }
    return bestScore;
  }
}

int evaluate() {
  for (int i = 0; i < WINNING_POSITIONS.length; i++) {
    int[] position = WINNING_POSITIONS[i];
    int a = board[position[0]];
    int b = board[position[1]];
    int c = board[position[2]];
    if (a == b && b == c) {
      if (a == COMPUTER) {
        return 1;
      } else if (a == USER) {
        return -1;
      }
    }
  }
  return 0;
}

boolean isBoardFull() {
  for (int i = 0; i < 9; i++) {
    if (board[i] == EMPTY) {
      return false;
     }
   }
 }
}
