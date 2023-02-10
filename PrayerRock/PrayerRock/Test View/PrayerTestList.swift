//
//  PrayerTestList.swift
//  PrayerRock
//
//  Created by Matt Ross on 2/7/23.
//

import SwiftUI

struct PrayerTestList: View {
    
    @StateObject private var prayerModel = PrayerModel()
    @EnvironmentObject private var prayermodel: PrayerModel
    @State private var search: String = ""
    @State private var filteredRequests: [Prayer] = []
    
    private func performSearch(keyword: String) {
        filteredRequests = prayermodel.prayer.filter { request in
            request.firstName.contains(keyword)
        }
    }
    
    private var prrequest: [Prayer] {
        filteredRequests.isEmpty ? prayermodel.prayer: filteredRequests
    }
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(prayermodel.prayer, id: \.guid) { prrequest in
                    PrayerViewTest(prayer: prrequest)
                }
                .background(.regularMaterial)
                .listRowSeparator(.hidden)
            }
            .onChange(of: search, perform: performSearch)
            .searchable(text: $search)
            //.listStyle(.grouped)
            .listStyle(.inset)
            .refreshable {
                Task {
                    do {
                        try await prayermodel.fetchPrayer()
                    } catch {
                        print("Error")
                    }
                    //.listStyle(.insetGrouped)
                    //.listStyle(.sidebar)
                    //.listStyle(.plain)
                }
            }
        }
    }
}

struct PrayerTestList_Previews: PreviewProvider {
    static var previews: some View {
        PrayerTestList()
            .environmentObject(PrayerModel())
    }
}
