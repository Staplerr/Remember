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
            configuration.isOn.toggle()
                
        } label: {
            Label {
                configuration.label
                    
            } icon: {
                
            }
        }
        .padding()
        .background(Color(red: configuration.isOn ? 0 : 1, green: configuration.isOn ? 0.5 : 1, blue: configuration.isOn ? 0.5 : 1))
        .foregroundStyle(configuration.isOn ? .white : .black)
        .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
        .animation(.easeOut(duration: 0.2), value: configuration.isOn)
    }
}
struct PageButton: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(Color(red: configuration.isPressed ? 0 : 1, green: configuration.isPressed ? 0.5 : 1, blue: configuration.isPressed ? 0.5 : 1,opacity: configuration.isPressed ? 0.9: 0.1))
                .foregroundStyle(configuration.isPressed ? .white : .black)
                .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                .scaleEffect(configuration.isPressed ? 1.1 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
}

struct ReviewButton: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .foregroundStyle(configuration.isPressed ? Color(red: 0.3, green: 0.63, blue: 0.42) : .black)                .scaleEffect(configuration.isPressed ? 1.1 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
}

struct RemoveButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundStyle(configuration.isPressed ? Color(red: 0.9, green: 0.1, blue: 0.05) : Color(red: 1, green: 0.4, blue: 0.4))              .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    
    struct ContentPreview: View {
        @State private var isOn = true
        var body: some View {
            Button("Press Me") {
                print("Button pressed!")
            }
            .buttonStyle(RemoveButton())
            
            if(isOn){
                Text("Hello")
            }
            
            Toggle("Switch Me", isOn: $isOn)
                        .toggleStyle(CheckToggleStyle())
                
        }
    }
    
    
    
    return ContentPreview()
}
