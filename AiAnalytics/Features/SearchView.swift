//
//  SearchView.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import SwiftUI

struct SearchView: View {
    @State private var query = ""
    
    var body: some View {
        VStack {
            TextField("Search...", text: $query)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Search") {
                AnalyticsManager.shared.track(
                    event: "search_query_entered",
                    metadata: [
                        "feature": "search",
                        "query": query
                    ]
                )
            }
            
            NavigationLink("View Results") {
                SearchResultsView()
            }
        }
        .onAppear {
            AnalyticsManager.shared.track(
                event: "search_opened",
                metadata: ["feature": "search"]
            )
        }
    }
}

#Preview {
    SearchView()
}
