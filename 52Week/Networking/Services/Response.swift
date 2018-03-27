//
//  Response.swift
//  52Week
//
//  Created by Matt Deuschle on 3/26/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import Foundation

enum Response<T> {
    case success(T)
    case failure(Error?)
}
