//
//  PaymentView.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import SwiftUI

struct PaymentView: View {
    var body: some View {
        VStack {
            Text("Payment")

            Button("Pay Now") {

                let success = Bool.random()

                if success {
                    AnalyticsManager.shared.track(
                        event: "checkout_completed",
                        metadata: [
                            "feature": "checkout",
                            "step": "success"
                        ]
                    )
                } else {
                    AnalyticsManager.shared.track(
                        event: "payment_failed",
                        metadata: [
                            "feature": "checkout",
                            "error": "random_failure"
                        ]
                    )
                }
            }
        }
        .onAppear {
            AnalyticsManager.shared.track(
                event: "checkout_payment_initiated",
                metadata: [
                    "feature": "checkout",
                    "step": "payment"
                ]
            )
        }
    }
}

#Preview {
    PaymentView()
}
