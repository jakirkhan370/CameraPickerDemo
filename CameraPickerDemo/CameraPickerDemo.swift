//
//  CameraPickerDemo.swift
//  CameraPickerDemo
//
//  Created by APPLE on 29/07/24.
//

import Foundation
/// Reference to `BoredFramework.default` for quick bootstrapping; Alamofire style!
public let Bored = BoredFramework.default

public class BoredFramework {
    /// Shared singleton instance.
    public static let `default` = BoredFramework()
    
    // Prevent  developers from creating their own instances by making the initializer `private`.
    private init() {}
}

// MARK: - Public developer APIs

public extension BoredFramework {
    /**
     Fetch an `Activity` from Bored API.
     
     This is our API method for external developers who are going to utilize our framework.
     */
    func fetchActivity() async -> Result<Activity, CameraPickerDemoError> {
        guard let url = URL(string: "https://www.boredapi.com/api/activity") else {
            return .failure(.invalidURL)
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let activity = try JSONDecoder().decode(Activity.self, from: data)
            return .success(activity)
        } catch DecodingError.dataCorrupted(let error) {
            return .failure(.decodingError(error))
        } catch let error {
            return .failure(.requestError(error))
        }
    }
}
