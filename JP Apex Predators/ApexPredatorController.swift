//
//  ApexPredatorController.swift
//  JP Apex Predators
//
//  Created by Chatzinikolaou Ioannis on 31/7/23.
//

import Foundation
import os.log

class ApexPredatorController {
    var apexPredators: [ApexPredator] = []

    init() {
        decodeApexPredatorData()
    }

    func decodeApexPredatorData() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            } catch {
                os_log("Error decoding JSON data: \(error)")
            }
        }
    }
}
