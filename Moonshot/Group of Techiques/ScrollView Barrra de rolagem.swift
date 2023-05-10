//
//  ScrollView Barrra de rolagem.swift
//  Moonshot
//
//  Created by Boris R on 09/05/23.
//

import SwiftUI
struct CustomText: View{
    let text: String
   
    
    var body: some View {
        Text(text)
        
    }
    
    init(_ text: String) {
        print("Crating a new CustomText")
       
        self.text = text
    }
}


struct ScrollView_Barrra_de_rolagem: View {
    var body: some View {
        ScrollView(.horizontal){ // colocar .horizontal e ..
            LazyHStack(spacing: 10) { // muda a Lazy para LazyHStack
                ForEach(0..<100){
                   
                        Image("no estilo")
                        .resizable()
                        .scaledToFit()
                    CustomText("Itens \($0)")
                }
                    .font(.title)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ScrollView_Barrra_de_rolagem_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Barrra_de_rolagem()
    }
}
