//
//  RequestView.swift
//  PrayerRock
//
//  Created by Matt Ross on 2/6/23.
//

import SwiftUI

struct RequestView: View {
    
    @EnvironmentObject var prayerModel: PrayerModel
    @State private var reply: String = ""
    @State private var showingOptions = false
    //let prayerRequest: Prayer
    
    var body: some View {
        ForEach(prayerModel.prayer, id: \.guid) { request in
            VStack {
                GroupBox {
                    HStack {
                        Text(request.firstName )
                            .textCase(.uppercase)
                            .font(.title3)
                        Text(request.lastName ?? "test")
                            .textCase(.uppercase)
                            .font(.title3)
                    }
                    //Spacer(minLength: 1)
                    VStack {
                        Text(request.email ?? "No Email Provided")
                            .fontWeight(.semibold)
                    }
                    .padding(.init(top: 0, leading: 5, bottom: 1, trailing: 5))
                    VStack {
                        Text(request.text)
                        Spacer(minLength: 1)
                        TextField("Type Your Reply Here", text: $reply)
                            .textFieldStyle(.roundedBorder)
                    }
                    Spacer(minLength: 15)
                    Button("Send Prayer") {
                        showingOptions.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                    .sheet(isPresented: $showingOptions) {
                        //GroupBox {
                        //ResponsePrayer()
                        //.presentationDetents([.fraction(0.35)])
                        //.padding()
                        //.backgroundStyle(.thickMaterial)
                        //}
                    }
                }
            }
            .listRowSeparator(.hidden)
        }
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
    RequestView()
            .environmentObject(PrayerModel())
    }
}
