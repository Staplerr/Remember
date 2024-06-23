//
//  ReviewMeaning.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct ReviewMeaning: View {
    @Environment(\.dismiss) var dismiss
    @Binding var key:String
    @Binding var value:String
    var body: some View {
        
        List{
            Text(key)
            Text(value)
        }.toolbar(content: {
            Button("Back",action: {dismiss})
        })
    }
}

#Preview {
    @State var key = "Fog"
    @State var value = "หมอก"
    return ReviewMeaning(key: $key, value: $value)
}
