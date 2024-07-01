This project is my first step into the world of iOS/iPadOS & MacOS development, with the use of XCode, Swift and SwiftUI.

Concepts learnt and Implemented:

 ### SwiftUI:
  Visual UI elements layered:
    Vstacks, Hstacks & ZStacks
      Embedded in these structures are linked image assets as well as text elements
  Alignment and formatting of visual elements:
    Spacers -
    Padding -
  Property Wrappers -
    

  ## Swift:
  ### Variables:
    Constants: 
      Values set & cannot be changed
    Variables:
      Values that can be altered after definition within scope
  ### Functions:
  A function in Swift is a reusable block of code designed to perform a specific task. Functions can take input in the form of parameters, execute a set of statements, and optionally return a value. Functions help in organizing code, making it      more readable, and avoiding repetition.
  ### Value types:
    Bool - True/False
    Int - Whole Numbers
    String - Text - typically rigid - better to use variables to search for parts of string so still returns true
    Double - Numbers displayed/ formatted with decimal point 
            else if playerCardValue == cpuCardValue{
                  playerScore += Int(0.5)
                  cpuScore += Int(0.5)
                  }
 ## Conditional Logic
 _The Majority of Conditional Logic in this exercise is used to program the score count and to deal out the cards_
  ### If Statements
  Logic to determine what to do **if** a value is **true** do this. 
 ### Else If Statements
   **if** **not** **true** do this instead
 ### Else Statements
   **if** none of this is **true** to do this code instead
   ### Analysing Code
    func deal() {
    // Generate a random number between 2 and 14 to represent the player's card.
    // This number is then converted to a string and prefixed with "card".
    // For example, if the random number is 5, the player's card will be "card5".
    let playerCardValue = Int.random(in: 2 ... 14)
    playerCard = "card" + String(playerCardValue)

    // Generate a random number between 2 and 14 to represent the CPU's (computer's) card.
    // This number is then converted to a string and prefixed with "card".
    // For example, if the random number is 10, the CPU's card will be "card10".
    let cpuCardValue = Int.random(in: 2 ... 14)
    cpuCard = "card" + String(cpuCardValue)

    // Compare the player's card value with the CPU's card value to determine who wins.
    // If the player's card value is higher than the CPU's card value:
    if playerCardValue > cpuCardValue {
        // Add 2 points to the player's score.
        // The player's score is incremented twice, which is redundant.
        // This can be simplified to adding 2 points in a single step.
        playerScore = playerScore + 1
        playerScore += 1
    // If the CPU's card value is higher than the player's card value:
    } else if cpuCardValue > playerCardValue {
        // Add 1 point to the CPU's score.
        cpuScore += 1
    // If the player's card value is equal to the CPU's card value (a tie):
    } else if playerCardValue == cpuCardValue {
        // Add 0.5 points to both the player's score and the CPU's score.
        // However, this code currently does not work correctly because Int(0.5) is 0.
        // This line should be revised to properly add 0.5 points.
        playerScore += Int(0.5)
        cpuScore += Int(0.5)
    }
}

   
  ## Evaluation
  
