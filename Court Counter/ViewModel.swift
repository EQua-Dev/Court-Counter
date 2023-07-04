//
//  ViewModel.swift
//  Court Counter
//
//  Created by Richard Uzor on 04/07/2023.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var teamAScore = 0
    @Published var teamBScore = 0
    
    @Published var teamAName = ""
    @Published var teamBName = ""
    
    init(teamAName: String, teamBName: String){
        self.teamAName = teamAName
        self.teamBName = teamBName
    }
    
    func add3Points(team: String){
        if team == "a"{
            teamAScore = teamAScore+3
        }else{
            teamBScore = teamBScore+3
        }
        
    }
    func add2Points(team: String){
        if team == "a"{
            teamAScore = teamAScore+2
        }else{
            teamBScore = teamBScore+2
        }
        
    }
    func add1Point(team: String){
        if team == "a"{
            teamAScore = teamAScore+1
        }else{
            teamBScore = teamBScore+1
        }
        
    }
    func resetPoints(){
        teamAScore = 0
        teamBScore = 0
    }
}
