//
//  DBError.swift
//  Line
//
//  Created by 양시관 on 3/9/24.
//

import Foundation

import Foundation

enum DBError: Error {
    case error(Error)
    case emptyValue
    case invalidatedType
}
