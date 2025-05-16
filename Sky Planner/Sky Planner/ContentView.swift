//
//  ContentView.swift
//  Sky Planner
//
//  Created by Jasvir on 2025-05-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("sky")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack {
                    Spacer()
                    Text("Sky Planner")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()

                    Spacer()
                    
                    NavigationLink(destination: FlightSearchView()) {
                        Text("Start Booking @Sky planner")
                            .font(.headline)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 50)
                }
            }
        }
    }
}

