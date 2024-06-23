//
//  NavigationComponent.swift
//  Private Dictionary
//
//  Created by admin on 23/6/2567 BE.
//

import SwiftUI

struct NavigationComponent: View {
    @Environment(\.dismiss) var dismiss
    @Binding var keywordDictionary:[String:String]
    @Binding var key:String
    private func binding(for key: String) -> Binding<String> {
        return .init(
            get: { self.keywordDictionary[key, default: ""] },
            set: { self.keywordDictionary[key] = $0 })
    }
    var body: some View {
        
        NavigationPage(Word:.constant(key),Meaning:binding(for: key))
            .toolbar(content: {
                ToolbarItemGroup{
                    Button("Delete",action: {
                        
                        keywordDictionary[key]=nil
                        dismiss()
                    })
                    .buttonStyle(RemoveButton())
                }
            })
    }
}

