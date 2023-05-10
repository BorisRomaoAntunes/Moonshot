//
//  Lista com janela para detalher .swift
//  Moonshot
//
//  Created by Boris R on 09/05/23.
//

import SwiftUI

struct Lista_com_janela_para_detalher_: View {
    var body: some View {
        
        NavigationView{
            List (0..<100) { row in // criar uma lista
                
                NavigationLink { // view de detalhe
                    Text("View para detalhar item \(row)")
                } label: {
                    Text("Items \(row)")
                        .padding()
                }
            }
            .navigationTitle("Swift")
        }
    }
}

struct Lista_com_janela_para_detalher__Previews: PreviewProvider {
    static var previews: some View {
        Lista_com_janela_para_detalher_()
    }
}
