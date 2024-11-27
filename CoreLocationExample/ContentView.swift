//
//  ContentView.swift
//  CoreLocationExample
//
//  Created by Mourad KIRAT on 22/02/2024.
//

import SwiftUI


struct ContentView: View {
    // call
    @State private var locationDataManager = LocationManager()
 
    @State  private var image:String = "img_bck"
    @State private var latitude: Double = 0
    @State private var longitude: Double = 0
    @State private var cityN:String = ""
    @State  private var countryC:String = ""
    @State private var color:String = "#000000"
    var body: some View {
        GeometryReader { metrics in
        VStack {
            
            HStack {
                Image("title")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280.0, height:280,alignment: .center)
              
            }.background(Color.init(UIColor(hexString: self.color)))
                .frame(maxWidth:.infinity, maxHeight:metrics.size.height * 0.30 )
            
        // Vstack 2
            VStack {
                VStack{
                    DetailLocation(image: image, nameCity: self.cityN, nameCountry: self.countryC, valLatitude: self.latitude, valLongitude: self.longitude)
                } .frame(maxWidth: .infinity, maxHeight:metrics.size.height * 0.60 )
             
            }.background( Color.init(UIColor(hexString:"3D3D3D")))
                    .cornerRadius(15)
                    .shadow(color: Color.init(UIColor(hexString: "#000000" )).opacity(0.2), radius: 10.0, x: -10.0, y: -10.0)
                   //
          
           

    } // End Vstack
   
        .onAppear(){
            // latitude and longitude
            let yourLatitudeString = String(locationDataManager.locationManager.location?.coordinate.latitude.description ?? "Error loading")
            let yourLongitudeString = String(locationDataManager.locationManager.location?.coordinate.longitude.description ?? "Error loading")
            
            self.latitude = (Double(yourLatitudeString) ?? 0)
            self.longitude =  (Double(yourLongitudeString) ?? 0)
        // city and country
            let locationInfo = LocationInfo()
            locationInfo.getCityAndCountryLocation(latitude: self.latitude, longitude: self.longitude) { city, country in
                if let city = city, let country = country {
                    self.cityN = city
                    self.countryC = country
                    print("City: \(city), Country: \(country)")
                } else {
                    print("Unable to fetch location information.")
                }
            }
        }

        } // End GeometryReader
        .background(Color.init(UIColor(hexString: self.color )))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
