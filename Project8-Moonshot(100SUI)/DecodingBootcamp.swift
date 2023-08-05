//
//  DecodingBootcamp.swift
//  Project8-Moonshot(100SUI)
//
//  Created by Artem on 05.08.2023.
//

import SwiftUI


struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct DecodingBootcamp: View {
 
        
    var body: some View {
        Button("Decode JSON") {
            
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                "street": "555, Taylow Swift Avenue",
                "city": "Nashvile"
                }
            }
            """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct DecodingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DecodingBootcamp()
    }
}
