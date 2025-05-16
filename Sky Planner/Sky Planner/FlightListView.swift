//
//  FlightListView.swift
//  Sky Planner
//
//  Created by Jasvir on 2025-05-15.
//

import SwiftUI

struct Flight: Identifiable {
    let id = UUID()
    let airline: String
    let time: String
    let price: String
    let travelClass: String
}

let dummyFlights = [
    Flight(airline: "Air Swift", time: "10:00 AM - 12:00 PM", price: "$199", travelClass: "Economy"),
    Flight(airline: "Sky Wings", time: "1:00 PM - 3:30 PM", price: "$299", travelClass: "Business"),
    Flight(airline: "Cloud Air", time: "6:00 PM - 8:00 PM", price: "$179", travelClass: "Economy"),
]

struct FlightListView: View {
    var from: String
    var to: String

    var body: some View {
        List(dummyFlights) { flight in
            VStack(alignment: .leading) {
                HStack {
                    Text(flight.airline)
                        .font(.headline)
                    Spacer()
                    Text(flight.travelClass)
                        .foregroundColor(.gray)
                }
                Text(flight.time)
                    .font(.subheadline)
                Text("Price: \(flight.price)")
                    .font(.subheadline)
                    .foregroundColor(.blue)

                NavigationLink("Book This Flight", destination: BookingConfirmationView(flight: flight))
                    .padding(.top, 5)
            }
            .padding(.vertical, 10)
        }
        .navigationTitle("Flights \(from) → \(to)")
    }
}

