//
//  ContentView.swift
//  makemytrip
//
//  Created by Lochan on 17/03/24.
//

import SwiftUI

struct ContentView: View {
    
    let trip = [Trip(name: "Haridwar", pic: "sun", price: 5000, dist: 4000),
                Trip(name: "Rishikesh", pic:"mon", price: 10000, dist: 5000),
                Trip(name: "Himalaya", pic:"space", price: 15000, dist: 10000)
    ]
    
    var body: some View {
        
        NavigationStack{
               List(trip){ trip in
                   NavigationLink(value: trip){
                    
                    TripsListView(trip: trip)}
            
               }.navigationTitle("Make My Trip")
            .navigationDestination(for: Trip.self) { trip in
                TripDetailsView(trip: trip)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct TripsListView: View {
    
        let trip: Trip
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            Image(trip.pic)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                .frame(height: 210)
            Text(trip.name)
                .font(.title2)
            HStack{
                Text("Price: ₹\(trip.price)")
                    .padding(.trailing)
                Text("Distance: \(trip.dist.formatted()) KM")
                    .frame(alignment: .trailing)
                
            }
            
        }
    }
}
