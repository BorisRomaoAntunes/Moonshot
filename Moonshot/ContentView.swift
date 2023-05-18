//
//  ContentView.swift
//  Moonshot
//
//  Created by Boris R on 09/05/23.
//

import SwiftUI


struct ContentView: View {
    @State private var showingList = true
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        NavigationView{
                if showingList {
                    List{
                        ForEach(missions) { mission in
                            NavigationLink {
                                MissionView(mission: mission, astronauts: astronauts)
                                    .foregroundColor(.white)
                                
                            } label: {
                                HStack{
                                    Image(mission.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70, height: 70)
                                    
                                    /// Tirei esse trecho abaixo comentado pois ele esta cortando as imagens nao serve para este programa por hora
                                    //.clipShape(Circle())
                                    //                                        .overlay(
                                    //                                            Circle()
                                    //                                                .strokeBorder(.white, lineWidth: 1)
                                    //                                        )
                                    //                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                    
                                    VStack(alignment: .leading) {
                                        Text(mission.displayName)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                        
                                        Text(mission.formattedLauchDate)
                                            .italic()
                                            .foregroundColor(.white.opacity(0.3))
                                    }
                                }
                            }
                            .listRowBackground(Color.darkBackground)
                            
                        }
                        
                    }
                    .navigationTitle("Moonshot")
                    .toolbar {
                        Button(){
                            showingList.toggle()
                            
                        }label:{
                            Text("View Type")
                            Image(systemName: showingList ? "rectangle.grid.2x2" : "list.bullet")
                        }
                        
                    }
                               }else {
                                   ScrollView {
                                   LazyVGrid(columns: columns) {
                                       ForEach(missions) { mission in
                                           NavigationLink {
                                               MissionView(mission: mission, astronauts: astronauts)
                                           } label: {
                                               
                                                   VStack {
                                                       Image(mission.image)
                                                           .resizable()
                                                           .scaledToFit()
                                                           .frame(width: 100, height: 100)
                                                           .padding()
                                                       VStack{
                                                           Text(mission.displayName)
                                                               .font(.headline)
                                                               .foregroundColor(.white)
                                                           Text(mission.formattedLauchDate) // formattedLaunchData é serva para
                                                               .font(.caption)
                                                               .foregroundColor(.white.opacity(0.5))
                                                       }
                                                       .padding(.vertical)
                                                       .frame(maxWidth: .infinity)
                                                       .background(.lightBackground)
                                                   }
                                                   .clipShape(RoundedRectangle(cornerRadius: 10))
                                                   .overlay(
                                                       RoundedRectangle(cornerRadius: 10)
                                                           .stroke(.lightBackground)
                                                   )
                                              
                                               
                                           }
                                           
                                       }
                                   }
                                   .padding([.horizontal, .bottom])

                                   .navigationTitle("Moonshot")
                                   .toolbar {
                                       Button(){
                                           showingList.toggle()
                                           
                                       }label:{
                                           Text("View Type")
                                           Image(systemName: showingList ? "rectangle.grid.2x2" : "list.bullet")
                                       }
                                       
                                   }
                    
                }
                                   .listRowBackground(Color.darkBackground)
            }
        }
        
        .preferredColorScheme(.dark) // info SwiftUI deve ser em darkmode de inicio
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
