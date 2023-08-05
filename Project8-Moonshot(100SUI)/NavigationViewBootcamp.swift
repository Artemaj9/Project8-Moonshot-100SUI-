//
//  NavigationViewBootcamp.swift
//  Project8-Moonshot(100SUI)
//
//  Created by Artem on 05.08.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
               ContentView()
            } label: {
                Text("Hello world!")
                    .padding()
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
