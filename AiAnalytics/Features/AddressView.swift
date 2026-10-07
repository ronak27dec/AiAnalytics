//
//  AddressView.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import SwiftUI

struct AddressView: View {
    var body: some View {
        VStack {
            Text("Enter Address")

            NavigationLink("Proceed to Payment") {
                PaymentView()
            }
        }
        .onAppear {
            AnalyticsManager.shared.track(
                event: "checkout_address_filled",
                metadata: [
                    "feature": "checkout",
                    "step": "address"
                ]
            )
        }
    }
}

#Preview {
    AddressView()
}
