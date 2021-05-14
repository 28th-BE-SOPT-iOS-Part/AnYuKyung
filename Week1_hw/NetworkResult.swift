//
//  NetworkResult.swift
//  Week1_hw
//
//  Created by kong on 2021/05/14.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
