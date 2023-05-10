//
//  rederizando imagens .swift
//  Moonshot
//
//  Created by Boris R on 09/05/23.
//


//GEOMETRYREADER

import SwiftUI

struct rederizando_imagens_: View {
    var body: some View {
        VStack{
            GeometryReader { geo in // # Estudar
                Image("no estilo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.8)
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            
            
            //            Image("no estilo")
            //                .resizable() // fez a imagem caber dentro do reme abaixo
            //                .scaledToFit() // imagem não destoce e fica dentro do frame
            //                .frame(width: 300, height: 300)
            //            //.clipped() // cortou a imagem somente dentro do frame criado acima
            //
            //            Image("no estilo")
            //                .resizable()
            //                .scaledToFill() // imagem fica do tamanho a preenche o frame e espandir ele mas dentro da tela
            //                .frame(width: 300, height: 300)
        }
    }
}

struct rederizando_imagens__Previews: PreviewProvider {
    static var previews: some View {
        rederizando_imagens_()
    }
}
