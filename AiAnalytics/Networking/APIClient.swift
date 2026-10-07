//
//  APIClient.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import Foundation

final class APIClient {
    static let shared = APIClient()
    private let baseURL = URL(string: "http://localhost:3000/events")!

    func postEvent(_ event: Event) {
        var request = URLRequest(url: baseURL)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        do {
            request.httpBody = try JSONEncoder().encode(event)
        } catch {
            print("Encoding error:", error)
            return
        }

        URLSession.shared.dataTask(with: request) { _, _, error in
            if let error = error {
                print("Network error:", error)
            }
        }.resume()
    }
}
