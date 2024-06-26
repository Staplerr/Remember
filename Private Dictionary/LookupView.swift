//
//  LookupView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct LookupView: View {
    @Binding var keywordDictionary : [String:String]
    @State var inputWord:String = ""
    @State var inputMeaning:String = ""
    var body: some View {
        VStack{
            List{
                VStack{
                    Text("Enter a word").font(.callout)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    TextField("Enter a word...",text: $inputWord)
                        .padding()
                }
                TextField("Enter its meaning...",text: $inputMeaning)
                    .padding()
                
                Section{
                    if (inputWord != "" && inputMeaning != "") {
                        VStack{
                            Button{
                                keywordDictionary[inputWord] = inputMeaning
                                print(keywordDictionary)
                                inputWord = ""
                                inputMeaning = ""
                            } label: {
                                Text("Submit").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            }
                            .buttonStyle(PageButton())
                        }
                    }
                }
            }.navigationBarTitle("Add Word")
        }
        
        
    }
}

#Preview {
    @State var keywordDictionary : [String:String] = ["lol":"laugh out loud"]
    return LookupView(keywordDictionary: $keywordDictionary)
}
