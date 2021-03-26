//
//  Characters.swift
//  Guess  Who
//
//  Created by John James on 3/20/21.
//

import Foundation


enum Characteristic : String, CaseIterable {
    case hairPartition, curlyHair, hat, bald, hairStuff, longHair,
         gingerHair, whiteHair, brownHair, blondHair, blackHair,
         bigMouth, bigNose, redCheeks, blueEyes, sadLooking,
         facialHair, moustache, beard,   // Mustache misspelled same as documents
         glasses, earRings, female
    
    var displayName: String {
        let stringArray = splitYourString(rawValue)
        var tileName = String()
        stringArray.forEach { word in
            tileName.append(" ")
            tileName.append(word.capitalized)
        }
        return tileName
    }
}

struct Character {
    var id : Int
    var name : String
    var characteristics : [ Characteristic]
}

let alex = Character( id: 0, name: "Alex",  characteristics: [.blackHair, .bigMouth, .facialHair, .moustache])
let alfred = Character(id: 1, name: "Alfred",  characteristics: [.hairPartition, .longHair, .gingerHair, .blueEyes, .sadLooking, .facialHair, .moustache])
let anita = Character(id: 2, name: "Anita",  characteristics: [.hairPartition, .hairStuff, .longHair, .blondHair, .redCheeks, .blueEyes, .female])
let anne = Character(id: 3, name: "Anne",  characteristics: [.curlyHair, .blackHair, .earRings, .female])
let bernard = Character(id: 4, name: "Bernard",  characteristics: [.hat, .hairStuff, .brownHair, .bigNose, .sadLooking])
let bill = Character(id: 5, name: "Bill",  characteristics: [.bald, .gingerHair, .redCheeks, .facialHair, .beard])
let charles = Character(id: 6, name: "Charles",  characteristics: [.hairPartition, .blondHair, .bigMouth, .facialHair, .moustache])
let claire = Character(id: 7, name: "Claire",  characteristics: [.hat, .hairStuff, .brownHair, .bigNose, .sadLooking])
let david = Character(id: 8, name: "David",  characteristics: [.blondHair, .bigMouth, .facialHair, .beard])
let eric = Character(id: 9, name: "Eric",  characteristics: [.hat, .blondHair, .bigMouth])
let frans = Character(id: 10, name: "Frans",  characteristics: [.curlyHair, .gingerHair])
let george = Character(id: 11, name: "George",  characteristics: [.hat, .bald, .whiteHair, .bigMouth, .sadLooking])
let herman = Character(id: 12, name: "Herman",  characteristics: [.curlyHair, .bald, .gingerHair, .bigNose])
let joe = Character(id: 13, name: "Joe",  characteristics: [.curlyHair, .blondHair, .glasses])
let maria = Character(id: 14, name: "Maria",  characteristics: [.hat, .hairStuff, .longHair, .earRings, .female])
let max = Character(id: 15, name: "Max",  characteristics: [.curlyHair, .brownHair, .bigMouth, .bigNose, .facialHair, .moustache])
let paul = Character(id: 16, name: "Paul",  characteristics: [.whiteHair, .glasses])
let peter = Character(id: 17, name: "Peter",  characteristics: [.hairPartition, .whiteHair, .bigMouth, .bigNose, .blueEyes])
let phillip = Character(id: 18, name: "Phillip",  characteristics: [.curlyHair, .blackHair, .bigMouth, .redCheeks, .facialHair, .beard])
let richard = Character(id: 19, name: "Richard",  characteristics: [.bald, .brownHair, .facialHair, .moustache, .beard])
let robert = Character(id: 20, name: "Robert",  characteristics: [.hairPartition, .brownHair, .bigMouth, .bigNose, .redCheeks, .blueEyes, .sadLooking])
let sam = Character(id: 21, name: "Sam",  characteristics: [.bald, .whiteHair, .glasses])
let susan = Character(id: 22, name: "Susan",  characteristics: [.hairPartition, .longHair, .whiteHair, .bigMouth, .redCheeks, .female])
let tom = Character(id: 23, name: "Tom",  characteristics: [.bald, .blackHair, .blueEyes, .glasses])

let characters = [alex, alfred, anita, anne, bernard, bill, charles, claire, david, eric, frans, george, herman, joe, maria, max, paul, peter, phillip, richard, robert, sam, susan, tom]














