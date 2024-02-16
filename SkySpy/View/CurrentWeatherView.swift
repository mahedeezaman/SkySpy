//
//  CurrentWeatherView.swift
//  SkySpy
//
//  Created by Mahedee Zaman on 15/02/2024.
//

import SwiftUI

struct CurrentWeatherView: View {
    @EnvironmentObject var locationManager: LocationManager
    @EnvironmentObject var timeManager: DateTimeManager
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.yellow)
            Text(locationManager.cityName ?? "unknown")
                .foregroundStyle(.white)
            Text(timeManager.currentTime)
                .foregroundStyle(.white)
        }
        .padding()
    }
}

#Preview {
    CurrentWeatherView()
}
