//
//  ContentView.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

extension Dictionary: RawRepresentable where Key == String, Value == String {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),  // convert from String to Data
            let result = try? JSONDecoder().decode([String:String].self, from: data)
        else {
            return nil
        }
        self = result
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),   // data is  Data type
              let result = String(data: data, encoding: .utf8) // coerce NSData to String
        else {
            return "{}"  // empty Dictionary resprenseted as String
        }
        return result
    }

}
////what the actual hell why do we need this.... why doesnt apple support storing stringdicts easily

struct ContentView: View {
    @AppStorage("keywordDict") var keywordDictionary : [String:String] = ["lol":"Laugh Out Loud",
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
                        Text("Add a Word").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
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
