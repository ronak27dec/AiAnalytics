//
//  CartView.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack {
            Text("Cart")

            NavigationLink("Proceed to Address") {
                AddressView()
            }
        }
        .onAppear {
            AnalyticsManager.shared.track(
                event: "checkout_started",
                metadata: [
                    "feature": "checkout",
                    "step": "cart"
                ]
            )
        }
    }
}

#Preview {
    CartView()
}
