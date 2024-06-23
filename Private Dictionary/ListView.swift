//
//  ListView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI



struct ListView: View {
    @State var inputCode : String = "TmkXj4Cx"
    @State var dataCode : String = ""
    @State var codeShow: Bool = false
    @Binding var keywordDictionary : [String:String]
    @State var Page:Int = 0
    var body: some View {
        ZStack{
            
            NavigationStack{
                List{
                    ForEach(keywordDictionary.sorted(by: >),id: \.key){element in
                        NavigationLink{
                            NavigationComponent(keywordDictionary: $keywordDictionary, key: .constant(element.key))
                        } label:{
                            Text(element.key)
                        }
                    }
                    if(keywordDictionary.count==0){
                        Text("Nothing Here...")
                    }
                }.sheet(isPresented: $codeShow,
                content: {
                    Text("Your code")
                    Text(dataCode)
                })
                .navigationTitle("Info")
                .toolbar(content: {
                    ToolbarItemGroup{
                        Button("Publish",action: {
                            Task{
                                do{
                                    
                                    var code = try await Publish(dict: keywordDictionary)
                                    print("end")
                                    dataCode = code
                                    
                                    print(dataCode)
                                    codeShow = true
                                    
                                }catch{
                                    print("error")
                                }
                            }
                        })
                        Button("Download",action: {
                            Task{
                                do{
                                    
                                    var code = try await Download(code:inputCode)
                                    keywordDictionary = code
                                    print(code)
                                    
                                }catch{
                                    print("error")
                                }
                            }
                        })
                        
                        TextField("code",text: $inputCode)
                    }
                })
            }
        }
    }
}

#Preview {
    @State var keywordDictionary : [String:String] = ["lol":"laugh out loud"]
    return ListView(keywordDictionary: $keywordDictionary)
}
