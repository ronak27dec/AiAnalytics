//
//  Event.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import Foundation

struct Event: Codable {
    let eventName: String
    let userId: String
    let sessionId: String
    let timestamp: String
    let metadata: [String: String]

    enum CodingKeys: String, CodingKey {
        case eventName = "event_name"
        case userId = "user_id"
        case sessionId = "session_id"
        case timestamp
        case metadata
    }
}
