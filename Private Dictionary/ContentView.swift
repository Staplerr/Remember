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
        VStack{
            ListView(keywordDictionary: keywordDictionary)
            
        }.toolbar(content: {
            ToolbarItemGroup{
                Button("Lookup",action: {Page = 0})
                Button("Lookup",action: {Page = 1})
            }
        })
    }
}

#Preview {
    ContentView()
}
