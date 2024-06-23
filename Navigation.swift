//
//  SwiftUIView.swift
//  ContactApp
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct Navigation: View {
    
    @Binding var Word: String
    @Binding var Meaning: String
    var body: some View {
        List{
            VStack{
                HStack{
                    Text("\(Word)")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                
                Section("Meaning"){
                    Text("\(Meaning)")
                        .fontWeight(.thin)
                    
                }.padding().fontWeight(.thin)
            }
        }
    }
}

#Preview {
    @State var contentPreview = ["Test", "For testing"]
    return Navigation(Word: $contentPreview[0], Meaning: $contentPreview[1])
}
