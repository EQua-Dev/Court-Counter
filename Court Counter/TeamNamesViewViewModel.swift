//
//  TeamNamesViewViewModel.swift
//  Court Counter
//
//  Created by Richard Uzor on 04/07/2023.
//

import Foundation

class TeamNamesViewViewModel: ObservableObject{
    
    @Published var teamAName = ""
    @Published var teamBName = ""
    
    init(teamAName: String = "", teamBName: String = "") {
        self.teamAName = teamAName
        self.teamBName = teamBName
    }
    
    
    
}
