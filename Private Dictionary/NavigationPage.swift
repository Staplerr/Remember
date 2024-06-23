
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
                    Spacer()
                    HStack{
                        Spacer()
                        Text("\(Word)")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    Spacer()
                }
                Section("คำแปล"){
                    Text("\(Meaning)")
                }
        }
    }
}

#Preview {
    @State var contentPreview = ["Dog", "สุนัข"]
    return Navigation(Word: $contentPreview[0], Meaning: $contentPreview[1])
}
