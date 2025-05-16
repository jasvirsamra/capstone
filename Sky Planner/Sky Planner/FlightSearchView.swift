//
//  FlightSearchView.swift
//  Sky Planner
//
//  Created by Jasvir on 2025-05-15.
//


import SwiftUI

struct FlightSearchView: View {
    @State private var from = ""
    @State private var to = ""
    @State private var isRoundTrip = false
    @State private var departureDate = Date()
    @State private var returnDate = Date()
    @State private var flexibleDates = false

    var body: some View {
        Form {
            Section(header: Text("Flight Details")) {
                TextField("From", text: $from)
                TextField("To", text: $to)

                Toggle("Round Trip", isOn: $isRoundTrip)
                DatePicker("Departure", selection: $departureDate, displayedComponents: .date)

                if isRoundTrip {
                    DatePicker("Return", selection: $returnDate, displayedComponents: .date)
                }

                Toggle("Flexible Dates", isOn: $flexibleDates)
            }

            Section {
                NavigationLink(destination: FlightListView(from: from, to: to)) {
                    Text("Search Flights")
                        .foregroundColor(.blue)
                }
            }
        }
        .navigationTitle("Search Flights")
    }
}
