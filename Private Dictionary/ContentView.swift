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
            
<<<<<<< HEAD
        }.toolbar(content: {
            ToolbarItemGroup{
                Button("Lookup",action: {Page = 0})
                Button("Lookup",action: {Page = 1})
            }
        })
    }
=======
        }    }
>>>>>>> 3590590b20f01aec8fd8d26dcefb6031e7d67160
}

#Preview {
    ContentView()
}
