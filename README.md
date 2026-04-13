# 🎯 Guess Master

A smart **Ruby CLI Number Guessing Game** featuring dynamic difficulty, multiple hint types, guess tracking, warm/cold feedback, and high-score tracking.

This project demonstrates core Ruby concepts including loops, conditionals, arrays, input validation, randomness, and game logic.

---

## 🚀 Features

### 🎮 Gameplay

* Random number generation
* Multiple difficulty levels
* Attempts based on difficulty
* Dynamic scoring system
* Replay option

### 🧠 Smart Hint System

Hints change dynamically based on the number:

* Even / Odd hint
* Range hint
* Last digit hint
* Greater/Less than midpoint
* Multiple of 5 hint

Hints per difficulty:

* Easy → 1 hint
* Medium → 2 hints
* Hard → 3 hints

---

### 🌡️ Warm / Cold Feedback

After each guess:

* 🔥 Very close (≤5)
* 🌡️ Warm (≤10)
* 🧊 Cold (>10)

---

### 📜 Guess History

Game tracks previous guesses:

Example:

```
Previous guesses: 10, 45, 72
```

Prevents duplicate guesses.

---

### 🏆 High Score System

Score is calculated using remaining attempts:

```
score = attempts * 10
```

Best score is tracked during the session.

---

## 🎯 Difficulty Levels

| Difficulty | Range | Attempts | Hints |
| ---------- | ----- | -------- | ----- |
| Easy       | 1-50  | 7        | 1     |
| Medium     | 1-100 | 5        | 2     |
| Hard       | 1-200 | 3        | 3     |

---

## 💡 Hint Examples

```
Hint: The number is EVEN
Hint: The number is between 40 and 60
Hint: Last digit is 7
Hint: Number is greater than 50
Hint: Number is multiple of 5
```

---

## ▶️ How to Run

### 1. Install Ruby

Check version:

```
ruby -v
```

### 2. Run the game

```
ruby guess_master.rb
```

---

## 🎮 Example Gameplay

```
🎯 Number Guessing Game
Select Difficulty:
1. Easy
2. Medium
3. Hard

Enter guess: 50
Too high
Warm
Previous guesses: 50
Attempts left: 4
```

---

## 🧠 Concepts Used

* Variables
* Loops
* Conditionals
* Arrays
* Random numbers
* Input validation
* Game logic
* String interpolation
* Case statements

---

## 📁 Project Structure

```
README.md
guess_master.rb
```

---

## 🔮 Future Improvements

* Leaderboard file save
* Timer mode
* Multiplayer mode
* Adaptive difficulty
* Achievement system
* GUI version
