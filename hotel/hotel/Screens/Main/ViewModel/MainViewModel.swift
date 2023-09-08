//
//  MainViewModel.swift
//  hotel
//
//  Created by VladimirCH on 08.09.2023.
//

import SwiftUI
import Combine

protocol MainViewModelProtocol: ObservableObject {

}

class MainViewModel: ObservableObject, MainViewModelProtocol {
    @Published var photos: [String] = []
    @Published var currentPage: Int = 0

    private var cancellables: Set<AnyCancellable> = []

    init() {
        setupBindings()
    }

    private func setupBindings() {
        $currentPage
            .sink { [weak self] newValue in
                self?.currentPageDidChange(newValue)
            }
            .store(in: &cancellables)
    }

    private func currentPageDidChange(_ newValue: Int) {
        // Вызывайте метод для обработки изменения текущей страницы, например, обновление точек
    }

    func fetchPhotos() {
        // Здесь можно добавить логику для загрузки фотографий по URL и кэширования
    }
}
