//
//  ContentView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var keywordDictionary : [String:String] = ["lol":"Laugh Out Loud",
                                                      "hello":"สวัสดี"]
    @State var Page:Int = 0
    var body: some View {
        NavigationStack{
            VStack{
                if(Page==0){
                    ListView(keywordDictionary: $keywordDictionary)
                }
                if(Page==1){
                    LookupView(keywordDictionary: $keywordDictionary)
                }
                if(Page==2){
                    Review(keywordDictionary: $keywordDictionary)
                }
                
            }.toolbar(content: {
                ToolbarItemGroup(placement: .bottomBar){
                    Spacer()
                    Button{
                        Page = 0
                    } label: {
                        Text("List").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }
                    .buttonStyle(PageButton())
                    .padding()
                    Button{
                        Page = 1
                    } label: {
                        Text("Lookup").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }
                    .buttonStyle(PageButton())
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                    Button{
                        Page = 2
                    } label: {
                        Text("Review").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }
                    .buttonStyle(PageButton())
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                    Spacer()

                }
            })
        }
    }
}

#Preview {
    ContentView()
}
