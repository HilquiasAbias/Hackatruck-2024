//
//  ContentView.swift
//  Aula07-IF-N
//
//  Created by Turma02-7 on 01/11/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var selectedLocation = locations[0]
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9153),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    @State private var showingSheet = false
    
    var body: some View {
        ZStack {
            Map(position: $position) {
                ForEach(locations) { location in
                    Annotation(location.name, coordinate: location.coordinate) {
                        Text("")
                        Image(systemName: "mappin.and.ellipse")
                            .onTapGesture {
                                showingSheet.toggle()
                            }
                    }
                }
                
            }
            .ignoresSafeArea()
            .sheet(isPresented: $showingSheet, content: {
                AsyncImage(url: URL(string: selectedLocation.flag)) { result in
                    result.image?
                        .resizable()
                        .frame(width: 200, height: 200)
                }
                Text(selectedLocation.description)
            })
            
            VStack {
                Spacer()
                HStack(spacing: 50) {
                    ForEach(locations) { location in
                        Button() {
                            print(location.name)
                            setMapCameraPosition(location: location)
                            selectedLocation = location
                        } label: {
                            AsyncImage(url: URL(string: location.flag)) { result in
                                result.image?
                                    .resizable()
                                    .frame(width: 80, height: 50)
                            }
                        }
                    }
                }
            }
        }
    }
    
    func setMapCameraPosition(location: Location) -> Void {
        position = MapCameraPosition.region(
            MKCoordinateRegion(
                center: location.coordinate,
                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
            )
        )
    }
}

#Preview {
    ContentView()
}
