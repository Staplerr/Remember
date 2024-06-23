//
//  Preview.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct Review: View {
    @Binding var wordList: [String]
    @State var show = false
    var body: some View {
        TabView {
            ForEach(wordList,id:\.self){ word in
                VStack{
                    Text(word)
                        .font(.title)
                        .bold()
                    Button("Show meaning", action: {
                        VStack{
                            Text("Meaning")
                        }
                    }).font(.caption)
                        .buttonStyle(PageButton())
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    @State var previewContent = ["Fading", "Decay", "Allow"]
    return Review(wordList: $previewContent)
}
