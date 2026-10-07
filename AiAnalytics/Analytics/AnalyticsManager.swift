//
//  AnalyticsManager.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import Foundation

final class AnalyticsManager {
    static let shared = AnalyticsManager()

    private let userId = UUID().uuidString
    private let sessionId = UUID().uuidString

    private init() {}

    func track(event: String, metadata: [String: String]) {
        let event = Event(
            eventName: event,
            userId: userId,
            sessionId: sessionId,
            timestamp: ISO8601DateFormatter().string(from: Date()),
            metadata: metadata
        )
        print("Event Analytics")
        print(event)
        send(event: event)
    }

    private func send(event: Event) {
        APIClient.shared.postEvent(event)
    }
}
