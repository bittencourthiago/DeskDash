//
//  WeatherRectangleView.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import SwiftUI

struct WeatherRectangleView: View {
    
    @State var weather: WeatherReceiver = WeatherReceiver(weather: [] , wind: Wind(speed: 0.0, deg: 0), main: WeatherMain(temp: 0.0, humidity: 0.0))
    
    let viewModel = WeatherRectangleViewModel()
    
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack(spacing: 5) {
                Spacer()
                    .frame(height: 20)
                Text("\(weather.main.temp.roundedToZero)º")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .black))
                HStack {
                    Image(systemName: WeatherIconManager().getIconNameFromCode(code: weather.weather.first?.icon ?? ""))
                        .foregroundColor(.white)
                    Text("\(weather.weather.first?.description ?? "")")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .black))
                    
                        
                }
                Text("Umidade: \(weather.main.humidity.roundedToZero)%")
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .black))
                    
            }
            .frame(width: 170, height: 170, alignment: .center)
            .background(.black.opacity(0.8))
            .cornerRadius(17)
        })
            .onAppear {
                viewModel.getWeather { receiver in
                    self.weather = receiver
                }
            }
    }
}

struct WeatherRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRectangleView()
    }
}
