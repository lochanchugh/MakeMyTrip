//
//  TripDetailsView.swift
//  makemytrip
//
//  Created by Lochan on 19/03/24.
//

import SwiftUI

struct TripDetailsView: View {
    let trip: Trip
    @State private var zoomed: Bool = false
    var body: some View {
        VStack{
            
            
            Image(trip.pic)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                }
            Text(trip.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack{
                Text("Price: \(trip.price.formatted()) INR")
                Text("Distance: \(trip.dist.formatted()) KM")
                
            }
            Spacer()
        }.navigationTitle(trip.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        TripDetailsView(trip: Trip(name: "Haridwar", pic: "sun", price: 5000, dist: 4000))
    }
}
