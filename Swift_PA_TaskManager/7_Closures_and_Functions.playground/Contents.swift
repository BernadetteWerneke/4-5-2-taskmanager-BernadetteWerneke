// TODO: Aufgabe 7. Closures und Funktionen


func generateRandomNumbersArrayWithTwentyRandomNumbers(closure: (Int) -> Bool) -> [Int] {
    var randomNumberArray: [Int] = []
    
    while randomNumberArray.count < 20 {
        let randomNumber = Int.random(in: 1...500)
        
        //check, ob Zahl doppelt + check, ob mod, dann erst in array angehängt
        if !randomNumberArray.contains(randomNumber) && closure(randomNumber) {
            randomNumberArray.append(randomNumber)
        }
    }
    return randomNumberArray
}

let closure: (Int) -> Bool = { number in
    return (number % 3 == 0) && (number % 5 == 0)
}

let randomNumberArray = generateRandomNumbersArrayWithTwentyRandomNumbers(closure: closure)
print(randomNumberArray)
print("Anzahl: \(randomNumberArray.count)")




