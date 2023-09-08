//
//  Coordinator.swift
//  hotel
//
//  Created by VladimirCH on 08.09.2023.
//

import SwiftUI

class Coordinator {

    func startMainView() -> some View {
        let viewModel = MainViewModel()
        return MainView(viewModel: viewModel)
    }
}
