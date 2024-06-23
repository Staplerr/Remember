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
    
    var body: some View {
        VStack{
            ListView(keywordDictionary: keywordDictionary)
            
        }
    }
}

#Preview {
    ContentView()
}
