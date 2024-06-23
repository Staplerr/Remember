//
//  ReviewComponent.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ReviewComponent: View {
    @Binding var key:String
    @Binding var value:String
    @State var meaningShow:Bool = false
    var body: some View {
        VStack{
            Spacer()
            
            
            Button(
                action:{
                    print("Pressed")
                    meaningShow = !meaningShow
                },
                label:{
                    VStack{
                        Text(key)
                            .font(.title)
                            .bold()
                        if(meaningShow){
                            Text(value)
                                .font(.caption)
                                .bold()
                        }
                        if(!meaningShow){
                            Text("กดเพื่อแสดงคำแปล")
                                .font(.caption)
                                .bold()
                        }
                    }
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(.white)
                    .foregroundStyle(.black)
                    
                    
                }).buttonStyle(ReviewButton())
            Spacer()
        }
    }
}

#Preview {
    @State var key = "Fog"
    @State var value = "หมอก"
    return ReviewComponent(key: $key, value: $value)
}
