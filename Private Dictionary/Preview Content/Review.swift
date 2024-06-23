//
//  Preview.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct Review: View {
    @Binding var keywordDictionary: [String:String]
    private func binding(for key: String) -> Binding<String> {
        return .init(
            get: { self.keywordDictionary[key, default: ""] },
            set: { self.keywordDictionary[key] = $0 })
    }
    var body: some View {
        TabView {
            ForEach(keywordDictionary.sorted(by: >),id: \.key){element in
                ReviewComponent(key: .constant(element.key), value: binding(for: element.key))
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    @State var previewContent = ["Fading":"จางลง", "Decay":"", "Allow":""]
    return Review(keywordDictionary: $previewContent)
}
