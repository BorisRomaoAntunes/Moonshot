//
//  Codagle JSON decoder.swift
//  Moonshot
//
//  Created by Boris R on 09/05/23.
//

import SwiftUI
struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable{
    let street: String
    let city: String
}
struct Codagle_JSON_decoder: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
        {
        "name": "Taylor Swift",
        "address": {
        "street": "555, Taylor Swift Avenue",
        "city": "Nashville"
           }
        }
       """
            let data = Data(input.utf8)
            
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print (user.name, user.address.city, user.address.street)
            }
//            let decoder = JSONDecoder()
//
//            if let user = try? decoder.decode(User.self, from: data){
//                print(user.address.street)
//            }
        }
        
    }
}

struct Codagle_JSON_decoder_Previews: PreviewProvider {
    static var previews: some View {
        Codagle_JSON_decoder()
    }
}
