//
//  ContentView.swift
//  JP Apex Predators
//
//  Created by Chatzinikolaou Ioannis on 31/7/23.
//

import SwiftUI

struct ContentView: View {
    var apexPredatorController = ApexPredatorController()

    var body: some View {
        NavigationView {
            List {
                ForEach(apexPredatorController.apexPredators) { item in
                    NavigationLink(destination: Text("Item Details")) {
                        PredatorRow(apexPredator: item)
                    }
                }
            }
            .navigationTitle("Apex Predators")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
