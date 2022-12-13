//
//  MainView.swift
//  TMDB-Client
//
//  Created by Иван Магда on 13.12.2022.

import SwiftUI
import Combine

extension MainViewController {
    
    struct ContainerView: View {
        
        @ObservedObject var viewModel: ViewModel
        
        init(_ viewModel: ViewModel) {
            self._viewModel = .init(initialValue: viewModel)
        }
        
        public var body: some View {
            Text("")
        }
    }
}
