//
//  PageButton.swift
//  Private Dictionary
//
//  Created by admin on 22/6/2567 BE.
//

import SwiftUI

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.label
                
        } label: {
            Label {
                configuration.label
                    
            } icon: {
                
            }
        }
        .buttonStyle(PageButton())
    }
}
struct PageButton: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(Color(red: configuration.isPressed ? 0 : 0.9, green: configuration.isPressed ? 0.5 : 0.9, blue: configuration.isPressed ? 0.5 : 0.9))
                .foregroundStyle(configuration.isPressed ? .white : .black)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.1 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        }
}

#Preview {
    
    struct ContentPreview: View {
        @State private var isOn = false
        var body: some View {
            Button("Press Me") {
                print("Button pressed!")
            }
            .buttonStyle(PageButton())
            

                
                    Toggle("Switch Me", isOn: $isOn)
                        .toggleStyle(CheckToggleStyle())
                
        }
    }
    
    return ContentPreview()
}
