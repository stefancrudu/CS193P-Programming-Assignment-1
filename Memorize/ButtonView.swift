//
//  ButtonView.swift
//  Memorize
//
//  Created by Stefan Crudu on 26.02.2023.
//

import SwiftUI

struct ButtonView: View {
    @State var content: Themes
    var updateTheme: (_ theme: Themes)-> Void

    var body: some View {
        Button {
            updateTheme(content)
        } label: {
            VStack {
                Image(systemName: content.icon)
                    .font(.largeTitle)
                Text(content.name)
                    .font(.caption)
            }
        }
        .foregroundColor(.red)
        .padding(.horizontal, 20.0)
    }
}
