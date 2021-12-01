import Foundation

RockPaperScissors()

func RockPaperScissors() {
    
    printInfo()
    
    print("Enter your choise:")
    
    let input = checkInput()
    
    if input == "" {return}
    
    if input == Shapes.rock.rawValue || input == Shapes.paper.rawValue || input == Shapes.scissors.rawValue {
    
        let compShape = (Shapes.allCases.randomElement()?.rawValue)!
        print("Computer chose \(compShape)")
        print("You chose \(input)")
    
        if input == Shapes.rock.rawValue, compShape == Shapes.scissors.rawValue {
            print("You win!")
        } else if input == Shapes.rock.rawValue, compShape == Shapes.paper.rawValue {
            print("Computer wins!")
        } else if input == Shapes.paper.rawValue, compShape == Shapes.rock.rawValue {
            print("You win!")
        } else if input == Shapes.paper.rawValue, compShape == Shapes.scissors.rawValue {
            print("Computer wins!")
        } else if input == Shapes.scissors.rawValue, compShape == Shapes.rock.rawValue {
            print("Computer wins!")
        } else if input == Shapes.scissors.rawValue, compShape == Shapes.paper.rawValue {
            print("You win!")
        } else if input == compShape {
            print ("Draw")
        } else { return }
    
    }
}

enum Shapes: String, CaseIterable {
    case rock = "Rock"
    case paper = "Paper"
    case scissors = "Scissors"
}



func printInfo() {
    print(
    """
    "Rock, Paper, Scissors!"

    Please, choose your shape:
    >> 1 - Rock
    >> 2 - Paper
    >> 3 - Scissors
    
    >> 4 - Exit

    """)
}

func checkInput() -> String {
    
    let input = readLine()
    if let x = input {
        switch x{
        case "1": return Shapes.rock.rawValue
        case "2": return Shapes.paper.rawValue
        case "3": return Shapes.scissors.rawValue
        case "4": return ""
        default: print("Incorrect input!")
        }
    }
    
    return ""
}


