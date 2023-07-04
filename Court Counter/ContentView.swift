//
//  ContentView.swift
//  Court Counter
//
//  Created by Richard Uzor on 04/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ViewModel

    
    init(teamAName: String, teamBName: String) {
        self._viewModel = StateObject(wrappedValue: ViewModel(teamAName: teamAName, teamBName: teamBName))
    }
    
    var body: some View {
        VStack{
            HStack{
                VStack {
                    Text("\(viewModel.teamAName)")
                        .bold()
                        .font(.title)
                    Text("\(viewModel.teamAScore)")
                        .bold()
                        .font(.system(size: 88))
                    PointsButton(btnText: "+ 3 Points", backgoundColor: Color.green){
                        viewModel.add3Points(team: "a")
                    }.padding(.top)
                    PointsButton(btnText: "+ 2 Points", backgoundColor: Color.blue){
                        viewModel.add2Points(team: "a")
                    }.padding(.top)
                    PointsButton(btnText: "+ 1 Point", backgoundColor: Color.orange){
                        viewModel.add1Point(team: "a")
                    }.padding(.top)
                    
                }
                .padding()
                
                VStack {
                    Text("\(viewModel.teamBName)")
                        .bold()
                        .font(.title)
                    Text("\(viewModel.teamBScore)")
                        .bold()
                        .font(.system(size: 88))
                    PointsButton(btnText: "+ 3 Points", backgoundColor: Color.green){
                        viewModel.add3Points(team: "b")
                    }.padding(.top)
                    PointsButton(btnText: "+ 2 Points", backgoundColor: Color.blue){
                        viewModel.add2Points(team: "b")
                    }.padding(.top)
                    PointsButton(btnText: "+ 1 Point", backgoundColor: Color.orange){
                        viewModel.add1Point(team: "b")
                    }.padding(.top)
                    
                }
                .padding()
            }
            
            PointsButton(btnText: "Reset", backgoundColor: Color.gray){
                viewModel.resetPoints()
            }
            .padding(.init(top: 250, leading: 50, bottom: 150, trailing: 50))
            .offset(y: -50)
        }
        .offset(y: 50)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(teamAName: "Team A", teamBName: "Team B")
    }
}
