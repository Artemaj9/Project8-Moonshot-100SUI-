//
//  ScrollingGridsBootcamp.swift
//  Project8-Moonshot(100SUI)
//
//  Created by Artem on 05.08.2023.
//

import SwiftUI

struct ScrollingGridsBootcamp: View {
    var body: some View {
        let layout = [
            GridItem(.adaptive(minimum: 80, maximum: 120)),
            GridItem(.adaptive(minimum: 80, maximum: 120)),
            GridItem(.adaptive(minimum: 80, maximum: 120)),
            
        ]
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ScrollingGridsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingGridsBootcamp()
    }
}
