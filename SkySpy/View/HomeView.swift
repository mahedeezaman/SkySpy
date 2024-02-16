//
//  ContentView.swift
//  SkySpy
//
//  Created by Mahedee Zaman on 14/02/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var locationManager = LocationManager()
    @StateObject var timeManager = DateTimeManager()
    
    var body: some View {
        ZStack {
            Color(fromHex: HomeViewConstants.bgColour)
                .ignoresSafeArea()
            GeometryReader { gr in
                ScrollView {
                    CurrentWeatherView()
                        .padding(.horizontal, 20)
                }
                .padding(.vertical, 20)
                .frame(width: gr.size.width, height: gr.size.height)
            }
        }
        .environmentObject(timeManager)
        .environmentObject(locationManager)
    }
}

#Preview {
    HomeView()
}
