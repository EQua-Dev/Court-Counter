//
//  TeamNamesView.swift
//  Court Counter
//
//  Created by Richard Uzor on 04/07/2023.
//

import SwiftUI

struct TeamNamesView: View {
    
    @StateObject var viewModel = TeamNamesViewViewModel()
    var body: some View {
        
        NavigationView{
            VStack{
                TeamNamesHeaderView(offsetY: -230, offsetX: -20)
                Form{
                    TextField("Enter Team A Name", text: $viewModel.teamAName)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    TextField("Enter Team B Name", text: $viewModel.teamBName)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                }.padding()
                
                NavigationLink(destination: ContentView(teamAName: viewModel.teamAName, teamBName: viewModel.teamBName)){
                    Text("Start Game")
                        .padding()
                        .bold()
                        .foregroundColor(Color.blue)
                       
                }
                .padding()
                Spacer()
               
            }
        }
       
    }
    
}

struct TeamNamesView_Previews: PreviewProvider {
    static var previews: some View {
        TeamNamesView()
    }
}
