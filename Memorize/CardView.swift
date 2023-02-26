//
//  CardView.swift
//  Memorize
//
//  Created by Stefan Crudu on 26.02.2023.
//

import SwiftUI

struct CardView: View {
    var emoji: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(lineWidth: 3)
            Text(emoji)
                    .font(.largeTitle)
        }
        .foregroundColor(.red)
        .aspectRatio(2/3, contentMode: .fill)
    }
}
