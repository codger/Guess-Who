//
//  ContentView.swift
//  Guess Who
//
//  Created by John James on 3/20/21.
//

import SwiftUI

struct ContentView: View {
    @State var cards = characters
    
    let rows = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
//        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    
    var body: some View {
        NavigationView{
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach(0..<characters.count, id: \.self) { item in
                    NavigationLink(
                        destination: CardView(characterID: item),
                        label: {
                            Image(uiImage: imageForCharacter(character: characters[item]))
                                .resizable()
                                .scaledToFit()
                        })
                }
            }
            .navigationTitle("Guess Who")
            .navigationBarTitleDisplayMode(.inline)
            
            .navigationBarItems(leading: Button(action: {
                print("Reset Pressed")
            }, label: {
                Image(systemName: "arrow.uturn.forward")
            }), trailing: Button(action: {
                print("Filter Pressed")
            }, label: {
                Image(systemName: "camera.filters")
            }))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
