//
//  ContentView.swift
//  Memorize
//
//  Created by Stefan Crudu on 26.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var theme: Themes = Themes.animals
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(theme.items.shuffled(), id: \.self, content: { emojiItem in
                        CardView(emoji: emojiItem)
                    })
                }
            }
            
            HStack {
                ForEach(Themes.allCases, id: \.self) { theme in
                    ButtonView(content: theme) { newTheme in
                        self.theme = newTheme
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


