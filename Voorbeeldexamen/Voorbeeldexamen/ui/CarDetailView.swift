//
//  CarDetailView.swift
//  Voorbeeldexamen
//
//  Created by Jarne Adam on 17/12/2025.
//

import SwiftUI

struct CarDetailView: View {
    var car: Car
    var body: some View {
        VStack{
            Text("Details for \(car.brand) \(car.model)").font(.title)
            Text("Color: \(car.color)")
            Text("Fuel type: \(car.fuelType)")
            Text("Year: \(car.year)")
            Text("price: \(car.price, specifier: "%.2f")")
        }
    }
}
