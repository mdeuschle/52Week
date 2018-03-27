//
//  WebService.swift
//  52Week
//
//  Created by Matt Deuschle on 3/26/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import Foundation

struct WebService: DataSource {

    private init() {}

    static func dataTask(with endPoint: EndPoint, completion: @escaping (Response<Data>) -> Void) {
        let requestURL = url(for: endPoint)
        let task = URLSession.shared.dataTask(with: requestURL) { data, _, error in
            let response: Response<Data>
            if let data = data {
                response = .success(data)
            } else {
                response = .failure(error)
            }
            completion(response)
        }
        task.resume()
    }

    static func url(for endPoint: EndPoint) -> URL {
        let path: String
        let base = "https://bikeshare.metro.net"
        switch endPoint {
        case .fiftyTwoWeek:
            path = base + "/stations/json/"
        }
        guard let url = URL(string: path) else {
            fatalError("Could not return url")
        }
        return url
    }
}




