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
            HStack {
                Image(systemName: "location.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(locationManager.cityName ?? "unknown")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
                Text(timeManager.currentTime)
                    .font(.system(size: 16))
            }
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack(spacing: 10) {
                        Text("-3°")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .foregroundStyle(Color(fromHex: "#87a8ce"))
                        Image(systemName: "cloud.sun")
                            .resizable()
                            .frame(width: 55, height: 45)
                    }
                    Group {
                        Text("High: -3°")
                            .font(.system(size: 16))
                        +
                        Text(" | ")
                            .font(.system(size: 16))
                        +
                        Text("Low: -9°")
                            .font(.system(size: 16))
                    }
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 10) {
                    Text("Cloudy")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    Text("Feels like -9°")
                        .font(.system(size: 16))
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    HomeView()
}
