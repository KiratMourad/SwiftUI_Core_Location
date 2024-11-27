//
//  DetailLocation.swift
//  CoreLocationExample
//
//  Created by Mourad KIRAT on 22/02/2024.
//

import SwiftUI

struct DetailLocation: View {
    private var image:String = "img_bck"
    private var nameCity:String = ""
    private var nameCountry:String = ""
    private var valLatitude:Double =  0.0
    private var valLongitude:Double =  0.0
    init(image: String, nameCity: String, nameCountry: String, valLatitude: Double, valLongitude: Double) {
        self.image = image
        self.nameCity = nameCity
        self.nameCountry = nameCountry
        self.valLatitude = valLatitude
        self.valLongitude = valLongitude
    }
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: 400.0, height:250,alignment: .topLeading)
            HStack{
                Text("City : ")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color.init(UIColor(hexString: "#DCDCDC")))

                Text(nameCity)
                    .font(.system(size: 25, weight: .medium))
                    .foregroundColor(Color.init(UIColor(hexString: "#FFFFFF")))
            }.frame(maxWidth: .infinity, alignment: .center )
            HStack{
            Text("Country : ")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.init(UIColor(hexString: "#DCDCDC")))

                Text(nameCountry)
                    .font(.system(size: 25, weight: .medium))
                    .foregroundColor(Color.init(UIColor(hexString: "#FFFFFF")))
            }.frame(maxWidth: .infinity, alignment: .center )
            HStack{
            Text("Latitude : ")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.init(UIColor(hexString: "#DCDCDC")))

                Text("\(valLatitude)")
                    .font(.system(size: 25, weight: .medium))
                    .foregroundColor(Color.init(UIColor(hexString: "#FFFFFF")))
            }.frame(maxWidth: .infinity, alignment: .center )
            HStack{
            Text("Longtude: ")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.init(UIColor(hexString: "#DCDCDC")))

                Text("\(valLongitude)")
                    .font(.system(size: 25, weight: .medium))
                    .foregroundColor(Color.init(UIColor(hexString: "#FFFFFF")))
            }.frame(maxWidth: .infinity, alignment: .center )
           
    }
}

