# Spring 2023 Fundamentals of Computing I — Assignment 4

* **Read these instructions repeatedly until you understand, then begin your project. If something is not clear, ask.**

## ❖ Before You Begin ❖

1. Log in to GitHub.
2. Fork this repo(sitory). See [this video](http://code-warrior.github.io/tutorials/git/github/forking-and-cloning-at-the-github-web-site/) on how to carry out this step and step `3`.
3. Clone your fork, using either the web site or the GitHub Desktop client.
4. Checkout your personalized branch, the one with your name and GitHub handle.

---

## ❖ Introduction ❖

Using basic Java graphics via the Processing programming language, create a tic tac toe game in which the user plays against the computer. A short movie of how this assignment should look and behave in its resolved state is available [here](http://vanegas.cs.hartford.edu/uploads/videos/tic-tac-toe.mp4).

---

## ❖ Rules ❖

1. The size of the canvas *must* be 500×500.
2. The computer _always_ plays first with an “X”.
3. The user _always_ renders a circle.
4. Any content that should be reported to the user *must* be done via Processing’s `println()` method.
5. Use only the numeric keys 0–8 to choose a square. The number 0 *must* map to the top left corner square, then assign the subsequent numbers across the top and down until you reach the bottom right corner square, which *must* map to the number 8.
6. When the user presses any key between 0–8 that corresponds to a blank square, your program should fill that square with a circle. This is akin to the user taking a turn at the game.
7. Immediately after the user plays, the computer takes its turn.
8. When the user presses any key _other_ than 0–8, your program should report a message to the user that they pressed an incorrect key.
9. After the user takes their turn, and if neither the user nor the computer has won, report to the user that the game is still in play.
10. If all squares are played and neither the computer nor the user has won, report to the user that no one has won.
11. When either the user or the computer has won, report this to the user.
12. Subsequent key presses after a game has ended should report to the user that the game has ended.

---

## ❖ File List ❖

This repo contains the following files, all required to carry out this assignment. Before you start working, ensure you understand the role of each file below.

1. `tic_tac_toe/tic_tac_toe.pde` — This is the springboard from where your Processing app will run via `setup()` and `draw()`.
2. `tic_tac_toe/constants.pde` — All global constants *must* go in this file.
3. `tic_tac_toe/shapes.pde` — All methods you author to draw shapes, such as “O”, “X”, and the tic tac toe board, *must* go in this file.
4. `tic_tac_toe/board.pde` — The logic of your program goes in this file. That is, all methods that will process the logic of your tic tac toe game.
5. `.editorconfig` — The settings in this version of `.editorconfig` by default indents code by 2 spaces. If you use VS Code instead of Processing to write code for this project, ensure EditorConfig is working *before* beginning this assignment. (The Processing IDE by default also indents by 2 spaces.)
6. `.gitignore` — *Do not modify any .gitignore files.*

**All your code may *only* be written in the `.pde` files discussed above.**

---

## ❖ Grading ❖

| Item                                                                        | Points  |
|-----------------------------------------------------------------------------|:-------:|
| Program works according to instructions                                     | `20`    |
| Code avoids being clever in favor of readability                            | `20`    |
| Code is neat and professional                                               | `20`    |
| Variable naming is logical                                                  | `20`    |
| Comments are used thoughtfully in places where code is not self documenting | `20`    |

---

## ❖ Due ❖

Wednesday, 26 April 2023, at 5:00 PM.

---

## ❖ Submission ❖

You will need to issue a pull request back into the original repo, the one from which your fork was created for this project. See the **Issuing Pull Requests** section of [this site](http://code-warrior.github.io/tutorials/git/github/index.html) for help on how to submit your assignment.

**Note**: This assignment may *only* be submitted via GitHub. **No other form of submission will be accepted**.
