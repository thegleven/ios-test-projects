//
//  ContentView.swift
//  m2chall2
//
//  Created by thegleven on 03/03/2024.
//

import SwiftUI
struct Card {
    var number = 1
    var suit = 0
}
struct ContentView: View {
    @State var deck = [Card]()
    @State var message = ""
    var suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
    @State var generatedLog = [String]()
    
    var body: some View {
        VStack {
            Spacer()
            Text(message)
            Spacer()
            HStack {
                Spacer()
                Button {
                    addCard()
                } label: {
                    Text("Add Card")
                }
                Spacer()
                Button {
                    drewCard()
                } label: {
                    Text("Drew Card")
                }
                Spacer()
            }
            Spacer()
        }
    }
    
    func addCard() {
        //random num and suit
        let randomNumber = Int.random(in: 1...13)
        let randomSuit = Int.random(in: 0...3)
        
        var newCard = Card()
        newCard.number = randomNumber
        newCard.suit = randomSuit
        
        let numberSuitComb = String(newCard.number) + "/" + String(newCard.suit)
        
        if generatedLog.contains(numberSuitComb) {
            message = "Duplicate card"
        } else {
            deck.append(newCard)
            generatedLog.append(numberSuitComb)
            let cardName = getCardName(newCard.number)
            let suitName = suits[newCard.suit]
            message = "Generated a \(cardName) of \(suitName)"
        }
    }
    func drewCard() {
       
        if deck.count == 0 {
            message = "No cards in the deck."
        }
        else {
            
            let randIndex = Int.random(in: 0...deck.count-1)
            
            // Get the card instance at the random index
            let randomCard = deck[randIndex]
            
            // Get the card number and suit names
            let cardName = getCardName(randomCard.number)
            let suitName = suits[randomCard.suit]
            
            // Change the message
            message = "Drew a \(cardName) of \(suitName)"
        }
    }
    
    func getCardName(_ cardNumber:Int) -> String {

        if cardNumber == 1 {
            return "Ace"
        }
        else if cardNumber == 11 {
            return "Jack"
        }
        else if cardNumber == 12 {
            return "Queen"
        }
        else if cardNumber == 13 {
            return "King"
        }
        else {
            return String(cardNumber)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
