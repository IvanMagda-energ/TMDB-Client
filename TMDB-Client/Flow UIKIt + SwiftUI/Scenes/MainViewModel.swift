//
//  MainView.swift
//  TMDB-Client
//
//  Created by Иван Магда on 13.12.2022.

import Combine
import SwiftUI

class MainViewModel: BaseViewModel<MainViewModel.State, MainViewModel.Action, Never> {
    
    enum Action {
        case showSaveUsers
    }
    
    struct State: AnyState {
        static func == (lhs: MainViewModel.State, rhs: MainViewModel.State) -> Bool {
            true
        }
        
        enum Screen: Equatable {
        }
        
        //Screen
        public fileprivate(set) var showedScreen: Screen?
        
        init() {}
        
    }
    
    override func action(_ action: Action) {
        switch action {
        case .showSaveUsers:
            break
        }
    }
}
