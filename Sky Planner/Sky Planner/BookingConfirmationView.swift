//
//  BookingConfirmationView.swift
//  Sky Planner
//
//  Created by Jasvir on 2025-05-15.
//

import SwiftUI

struct BookingConfirmationView: View {
    var flight: Flight

    var body: some View {
        VStack(spacing: 20) {
            Text("Booking Confirmed!")
                .font(.largeTitle)
                .foregroundColor(.green)

            Text("Airline: \(flight.airline)")
            Text("Time: \(flight.time)")
            Text("Class: \(flight.travelClass)")
            Text("Price: \(flight.price)")

            Spacer()
        }
        .padding()
        .navigationTitle("Confirmation")
    }
}

