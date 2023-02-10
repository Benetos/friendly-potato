//
//  PrayerRockApp.swift
//  PrayerRock
//
//  Created by Matt Ross on 12/13/22.
//

import SwiftUI

@main
struct PrayerRockApp: App {
    @StateObject private var prayerModel = PrayerModel()
    //@StateObject private var counter = Counter(random: Prayer)
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(prayerModel)
                //.environmentObject(counter)
        }
    }
}
