//
//  HomeView.swift
//  Voorbeeldexamen
//
//  Created by Jarne Adam on 17/12/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(DataManager.self) var dataManager
    @State var loading = true
    @State private var selectedCar : Car?
    var body: some View {
        NavigationSplitView{
            if loading {
                ProgressView("Loading...")
            } else {
                List(dataManager.cars, id: \.self, selection: $selectedCar) { car in
                    VStack{
                        Text("Brand: \(car.brand)")
                        Text("Model: \(car.model)")
                        Text("Price: \(car.price, specifier: "%.2f") euro")
                    }
                }
            }
        } detail: {
            if let selectedCar {
                CarDetailView(car: selectedCar)
            } else {
                Text("No car selected")
            }
        }
        .task {
            await dataManager.loadCars()
            loading = false
        }
    }
}
