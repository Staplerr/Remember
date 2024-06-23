//
//  LookupView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct LookupView: View {
    @Binding var keywordDictionary : [String:String]
    @State var textInput:String = ""
    var body: some View {
        VStack{
            List{
                VStack{
                    Text("Enter Keyword").font(.callout)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    TextField("Enter A Keyword....",text: $textInput)
                }
                Text(keywordDictionary[textInput.lowercased()] ?? "No Known Description")
                .padding()
            }.navigationBarTitle("Lookup")
        }
    }
}

#Preview {
    @State var keywordDictionary : [String:String] = ["lol":"laugh out loud"]
    return LookupView(keywordDictionary: $keywordDictionary)
}
