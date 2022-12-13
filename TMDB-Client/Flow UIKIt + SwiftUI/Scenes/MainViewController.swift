//
//  MainView.swift
//  TMDB-Client
//
//  Created by Иван Магда on 13.12.2022.

import Combine
import SwiftUI

class MainViewController: SwiftUIViewController {
  typealias ViewModel = MainViewModel
  
  private let viewModel: ViewModel
  private var cancellables = Set<AnyCancellable>()
  
  init(_ viewModel: ViewModel) {
    self.viewModel = viewModel
    
    super.init(nibName: nil, bundle: nil)
    
    subscribe()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func loadView() {
    super.loadView()
      
      navigationController?.navigationBar.isHidden = true
    
    add(view: {
      ContainerView(viewModel)
    }, holderView: self.view) { holderView, contentView in
      holderView.addSubviewFillingToEdges(contentView)
    }
  }
}

// - Subscribe
private extension MainViewController {
  
  func subscribe() {
    viewModel.$state.sink { [weak self] state in
      self?.update(with: state)
    }.store(in: &cancellables)
  }
  
  func update(with state: ViewModel.State) {
    updateShowedScreen(state.showedScreen)
  }
  
  func updateShowedScreen(_ screen: ViewModel.State.Screen?) {
    guard viewModel.state.showedScreen != screen else { return }
    
    switch screen {
   
    default:
      break
    }
  }
}


