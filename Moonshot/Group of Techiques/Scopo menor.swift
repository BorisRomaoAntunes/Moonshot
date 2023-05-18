//
//  Scopo menor.swift
//  Moonshot
//
//  Created by Boris R on 18/05/23.
//

import SwiftUI

struct Scopo_menor: View {
    var body: some View {
        List {
            ForEach(0..<10) { row in
                NavigationLink {
                    Text("DETALHER")
                } label: {
                    Text("item\(row)")
                }
            }
        }
    }
}

struct Scopo_menor_Previews: PreviewProvider {
    static var previews: some View {
        Scopo_menor()
    }
}
