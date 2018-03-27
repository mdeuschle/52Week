//
//  DataSource.swift
//  52Week
//
//  Created by Matt Deuschle on 3/26/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import Foundation

protocol DataSource {
    static func dataTask(with endPoint: EndPoint, completion: @escaping (Response<Data>) -> Void)
    static func url(for endPoint: EndPoint) -> URL
}
