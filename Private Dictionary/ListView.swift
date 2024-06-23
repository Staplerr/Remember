//
//  ListView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI



struct ListView: View {
    @State var keywordDictionary : [String:String]
    
    private func binding(for key: String) -> Binding<String> {
        return .init(
            get: { self.keywordDictionary[key, default: ""] },
            set: { self.keywordDictionary[key] = $0 })
    }
    var body: some View {
        NavigationStack{
            List{
                ForEach(keywordDictionary.sorted(by: >),id: \.key){element in
                    NavigationLink{
                        NavigationPage(Word:.constant(element.key),Meaning:binding(for: element.key))
                    } label:{
                        Text(element.key)
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
