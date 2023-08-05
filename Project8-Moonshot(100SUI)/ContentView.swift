//
//  ContentView.swift
//  Project8-Moonshot(100SUI)
//
//  Created by Artem on 05.08.2023.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
       
        NavigationStack {
            VStack {
            GeometryReader { geo in
                Image("Zvezdopad")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width)
            }
            .padding(.vertical)
                List (0..<100) { row in
                    NavigationLink {
                        NavigationViewBootcamp()
                    } label : {
                        CustomText("Item \(row)")
                            .font(.title)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
