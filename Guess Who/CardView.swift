//
//  CardView.swift
//  Guess Who
//
//  Created by John James on 3/21/21.
//

import SwiftUI

struct CardView: View {
    
    @State var characterID : Int
    var body: some View {
        
        VStack {
            Text("Character Name is")
            Text(characters[characterID].name)
                .font(.largeTitle)
            Image( uiImage: imageForCharacter(character: characters[characterID]))
                .resizable()
                .scaledToFit()
            ForEach(characters[characterID].characteristics, id: \.self) { char in
                
                Text(char.displayName)
            }
            
            Spacer()
        }
    }
}

struct CardImage_Previews: PreviewProvider {
    static var previews: some View {
        CardView(characterID: 3)
    }
}

func imageForCharacter(character : Character) -> UIImage {
    
    // Used to crop image from suit sheets
    
    let id = character.id
    let colCount = 8
    let rowCount = 3
    
    
    guard let cgImage = UIImage(named: "CharacterSheet")?.cgImage
    else { return UIImage()}
    let sheetWidth =  cgImage.width
    let sheetHeight = cgImage.height
    let imageWidth = sheetWidth / colCount
    let imageHeight = sheetHeight / rowCount

    let x : CGFloat = CGFloat( imageWidth *  (id % colCount))
    let y : CGFloat = CGFloat (imageHeight *   (id / colCount))

    if let cropped = cgImage.cropping(to: CGRect(x: x , y: y, width: CGFloat(imageWidth) + 10, height: CGFloat(imageHeight))){
        let uiImage  = UIImage(cgImage: cropped)
        return uiImage
    }
    return UIImage()
}

func splitYourString(_ s: String) ->[String] {
    let regex = try! NSRegularExpression(pattern: "([a-z]*)([A-Z])") //<-Use capturing, `([a-z]*)`->$1, `([A-Z])`->$2
    return regex.stringByReplacingMatches(in: s, range: NSRange(0..<s.utf16.count),
                                          withTemplate: "$1 $2").trimmingCharacters(in: .whitespacesAndNewlines) .components(separatedBy: " ")
}
