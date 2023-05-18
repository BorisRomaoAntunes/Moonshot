//
//  Colunas de Dados Grid  ScollView.swift
//  Moonshot
//
//  Created by Boris R on 09/05/23.
//

import SwiftUI
let layout =
    [
    GridItem(.adaptive(minimum:80, maximum: 120)),
    GridItem(.adaptive(minimum:80, maximum: 120)),
//    GridItem(.adaptive(minimum:80, maximum: 120)),
//    GridItem(.adaptive(minimum:80, maximum: 120))
    ]
    
struct Colunas_de_Dados_Grid__ScollView: View {
    var body: some View {
        
        ScrollView(.horizontal){
            LazyHGrid (rows: layout){
                ForEach(0..<100) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct Colunas_de_Dados_Grid__ScollView_Previews: PreviewProvider {
    static var previews: some View {
        Colunas_de_Dados_Grid__ScollView()
    }
}
