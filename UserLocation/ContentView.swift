//
//  ContentView.swift
//  UserLocation
//
//  Created by Artem Axenov on 2022-10-12.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ConentViewModel()
    

    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemPink))
            .onAppear {
                viewModel.checkIfLocServicesIsEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
