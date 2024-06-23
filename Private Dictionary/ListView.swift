//
//  ListView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ListView: View {
    @State var keywordDictionary : [String:String]
    var body: some View {
        NavigationStack{
            List{
                ForEach(keywordDictionary.sorted(by: >),id: \.key){key, value in
                    NavigationLink{
                        Text("test")
                        //NavigationPage(Word:key,Meaning:value)
                    } label:{
                        Text(value)
                    }
                }
            }
            .navigationTitle("Info")
        }
    }
}

#Preview {
    @State var keywordDictionary : [String:String] = ["lol":"laugh out loud"]
    return ListView(keywordDictionary: keywordDictionary)
}
