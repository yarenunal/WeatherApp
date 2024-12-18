//
//  ContentView.swift
//  WeatherApp
//
//  Created by Yaren on 18.12.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager() 
    var body: some View {
        VStack {
            WelcomeView()
                .environmentObject(locationManager)
            
        }.background(Color(hue:0.656, saturation:0.787, brightness:0.354)).preferredColorScheme(.dark)
        
        
    }
}

#Preview {
    ContentView()
}
