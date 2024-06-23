//
//  LookupView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct LookupView: View {
    @State var keywordDictionary : [String:String]
    @State var textInput:String = ""
    var body: some View {
        VStack{
            Text("Lookup")
            List{
                HStack {
                    TextField("Enter A Keyword....",text: $textInput)
                    Text(keywordDictionary[textInput.lowercased()] ?? "-")
                }
                .padding()
            }
        }
    }
}

#Preview {
    @State var keywordDictionary : [String:String] = ["lol":"laugh out loud"]
    return LookupView(keywordDictionary: keywordDictionary)
}
