//
//  MainHotelService.swift
//  hotel
//
//  Created by VladimirCH on 08.09.2023.
//

import Foundation
import Combine

class MainHotelService {
    func fetchData() -> AnyPublisher<MainHotelResponseModel, Error> {
        guard let url = URL(string: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3") else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: MainHotelResponseModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
