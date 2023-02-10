//
//  ContentView.swift
//  PrayerRock
//
//  Created by Matt Ross on 12/13/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var prayermodel: PrayerModel
    @StateObject private var prayerModel = PrayerModel()
    @State private var reply = ""
    
    @State private var search: String = ""
    @State private var filteredRequests: [Prayer] = []
    
    var body: some View {
        VStack {
            PrayerTestList()
            }
            .task  {
                do {
                    try await prayerModel.fetchPrayer()
                    print("Fetched request")
                } catch {
                    print(error)
                }
            }
            .task  {
                do {
                    try await prayerModel.login()
                    print("Logged in")
                    //print(prayerModel.prayer)
                } catch {
                    print(error)
                }
            }
            .environmentObject(prayerModel)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
