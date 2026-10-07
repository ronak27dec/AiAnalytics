//
//  HomeView.swift
//  AiAnalytics
//
//  Created by Ronak Malick on 17/04/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Search Feature") {
                    SearchView()
                }

                NavigationLink("Checkout Feature") {
                    CartView()
                }
            }
            .navigationTitle("Features")
        }
    }
}

#Preview {
    HomeView()
}
