//
//  PredatorRow.swift
//  JP Apex Predators
//
//  Created by Chatzinikolaou Ioannis on 31/7/23.
//

import SwiftUI

struct PredatorRow: View {
    let apexPredator: ApexPredator
    var body: some View {
        HStack {
            // Predator Image
            Image(apexPredator.name.lowercased().filter { $0 != " "})
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .shadow(color: .white, radius: 1, x:0, y: 0)

            VStack {
                // Name
                Text(apexPredator.name)
                    .fontWeight(.bold)


                // Type
                Text(apexPredator.type.capitalized)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.horizontal, 13)
                    .padding(.vertical, 5)
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(apexPredator.typeOverlay().opacity(0.33))
                    )
            }
        }
    }
}

struct PredatorRow_Previews: PreviewProvider {
    static var previews: some View {
        let movieScene = MovieScene(id: 3, movie: "Jurassic Park III", sceneDescription: "A young adult Tyrannosaurus appears in Jurassic Park 3. According to the official size charts, it is 37 feet long and 14.5 feet tall. When Alan Grant and the other survivors escape the Spinosaurus, they encounter the creature who is just feeding on another dinosaur. The group runs back towards the Spinosaurus and a huge battle occurs between the Tyrannosaurus and the Spinosaurus. The Spinosaurus kills the T-Rex by snapping its neck in its powerful jaws.")
        let predator = ApexPredator(id: 3, name: "Tyrannosaurus Rex", type: "land", movies: ["Jurassic Park","The Lost World: Jurassic Park","Jurassic Park III","Jurassic World","Jurassic World: Fallen Kingdom"], movieScenes: [movieScene], link: "https://jurassicpark.fandom.com/wiki/Tyrannosaurus_rex")
        PredatorRow(apexPredator: predator)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
