//
//  LocationInfo.swift
//  CoreLocationExample
//
//  Created by Mourad KIRAT on 22/02/2024.
//


import CoreLocation

class LocationInfo {
    private var cityName = ""
    private var countryName = ""
    
    func getCityAndCountryLocation(latitude: Double, longitude: Double, completion: @escaping (String?, String?) -> Void) {
        CLGeocoder().reverseGeocodeLocation(CLLocation(latitude: latitude, longitude: longitude)) { placemarks, _ in
            guard let placemark = placemarks?.first else { completion(nil, nil); return }
            self.cityName = placemark.locality ?? ""
            self.countryName = placemark.country ?? ""
            completion(self.cityName, self.countryName)
        }
    }
    
    func getNameCity() -> String { cityName }
    
    func getNameCountry() -> String { countryName }
}
