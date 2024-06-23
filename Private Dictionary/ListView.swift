//
//  ListView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI



struct ListView: View {
    @Binding var keywordDictionary : [String:String]
    @State var Page:Int = 0
    @State var onDelete: Bool = false
    
    private func binding(for key: String) -> Binding<String> {
        return .init(
            get: { self.keywordDictionary[key, default: ""] },
            set: { self.keywordDictionary[key] = $0 })
    }
    var body: some View {
        ZStack{
            
            NavigationStack{
                VStack{
                    
                    List{
                        ForEach(keywordDictionary.sorted(by: >),id: \.key){element in
                            NavigationLink{
                                NavigationPage(Word:.constant(element.key),Meaning:binding(for: element.key))
                                    .toolbar(content: {
                                        ToolbarItem{
                                            Button("Remove a word", action:{
                                                onDelete = true
                                            })
                                            .padding()
                                            .buttonStyle(RemoveButton())
                                            .font(.caption)
                                        }
                                    })
                            }
                        label:{
                            Text(element.key)
                        }
                            
                        }
                    }
                    .navigationTitle("Info")
                }
                
            }
        }
    }
}

#Preview {
    @State var keywordDictionary : [String:String] = ["lol":"laugh out loud"]
    return ListView(keywordDictionary: $keywordDictionary)
}
