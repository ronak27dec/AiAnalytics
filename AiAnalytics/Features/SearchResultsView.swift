//
//  SearchResultsView.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import SwiftUI

struct SearchResultsView: View {
    var body: some View {
        List(0..<5) { index in
            Button("Item \(index)") {
                AnalyticsManager.shared.track(
                    event: "search_item_clicked",
                    metadata: [
                        "feature": "search",
                        "item_id": "\(index)"
                    ]
                )
            }
        }
        .onAppear {
            AnalyticsManager.shared.track(
                event: "search_results_viewed",
                metadata: ["feature": "search"]
            )
        }
    }
}

#Preview {
    SearchResultsView()
}
