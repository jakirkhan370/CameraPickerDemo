//
//  CameraPickerDemoError.swift
//  CameraPickerDemo
//
//  Created by APPLE on 29/07/24.
//

import Foundation

public enum CameraPickerDemoError: Error {
    case invalidURL
    case requestError(_ error: Error)
    case decodingError(_ error: DecodingError.Context)
    
    public var localizedDescription: String {
        switch self {
        case .invalidURL: return "Invalid URL"
        case .requestError(let error): return "Request error: \(error.localizedDescription)"
        case .decodingError(let error): return "Decoding error: \(error.debugDescription)"
        }
    }
}
