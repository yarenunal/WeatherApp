//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Yaren on 18.12.2024.
//

import Foundation
import CoreLocation
class WeatherManager {
func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees)async throws ->ResponseBody {
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("abcde")&units=metric") else { fatalError("Missing URL")}
        let urlrequest = URLRequest(url: url)
        let (data , response) = try await URLSession.shared.data(for: urlrequest)
        
        guard(response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data") }
        
        let decodeData = try JSONDecoder().decode(ResponseBody.self , from: data)
        
        return decodeData
        
    }
}
