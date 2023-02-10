//
//  PrayerViewTest.swift
//  PrayerRock
//
//  Created by Matt Ross on 2/7/23.
//

import SwiftUI
import Foundation

struct PrayerViewTest: View {
    
    @EnvironmentObject private var prayermodel: PrayerModel
    @State private var showingOptions: Bool = false
    @State private var reply = ""
    @State private var expandPrayer: Bool = false
    @State private var opacity: Int = 1
    let prayer: Prayer
    //@EnvironmentObject private var prayermodel: PrayerModel
    
    var body: some View {
        VStack {
            //GroupBox {
            HStack {
                Text(prayer.firstName )
                    .textCase(.uppercase)
                    .font(.title3)
                Text(prayer.lastName ?? "test")
                    .textCase(.uppercase)
                    .font(.title3)
                //Text(prayer.prayerCount)
            }
            //Spacer(minLength: 1)
            VStack {
                Text(prayer.email ?? "No Email Provided")
                    .fontWeight(.semibold)
            }
            .padding(.init(top: 0, leading: 5, bottom: 1, trailing: 5))
            VStack(alignment: .center) {
                if expandPrayer {
                    RequestTextFull(prayer: prayer)
                        .onTapGesture {
                            withAnimation(.linear(duration: 0.2)) {
                                expandPrayer.toggle()
                            }
                        }
                        .transition(.opacity)
                } else {
                    RequestTextMini(prayer: prayer)
                        .lineLimit(4)
                        .allowsTightening(true)
                        .truncationMode(.tail)
                        .onTapGesture {
                            withAnimation(.linear(duration: 0.2)) {
                                expandPrayer.toggle()
                            }
                        }
                        .transition(.opacity)
                }
                Spacer(minLength: 1)
                TextField("Your Prayer Here", text: $reply, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .padding(.init(top: 0, leading: 5, bottom: 5, trailing: 5))
                    .lineLimit(5, reservesSpace: false)
            }
            Spacer(minLength: 15)
            HStack {
                Button {
                    //showingOptions.toggle()
                    //prayermodel.counterUpdate()
                } label: {
                    Image(systemName: "person.crop.rectangle.fill")
                        .padding(1.5)
                }
                .buttonStyle(.borderedProminent)
                
                Button("Send Response") {
                    
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    Task {
                        await placeOrder()
                    }
                } label: {
                    Text(prayer.prayerCount?.description ?? "0")
                    Image(systemName: "hand.raised.square.fill")
                }
                .buttonStyle(.borderedProminent)
                .sheet(isPresented: $showingOptions) {
                    GroupBox {
                        ResponsePrayer()
                            .presentationDetents([.fraction(0.30)])
                        //.padding()
                            .backgroundStyle(.thickMaterial)
                    }
                }
            }
        }
        .padding(.vertical)
        //}
    }

    func placeOrder() async {
        //var semaphore = DispatchSemaphore (value: 0)
        
        guard let url = URL(string: "https://staff.faithchurch.com/api/PrayerRequests/Prayed/\(prayer.id)?recordinteraction=true") else { fatalError("Missing URL")}
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "PUT"
        request.addValue(".ROCK=F2D12E19E4A6634535CCFE2D7CAF278289129A2242EF62359BF76EA3249231894CA2A21AA51E46CCEE1FDB93BDAC268F30CAF74646014BD4437697DF9D0B2C1F9A6CCA986A03D525EC41FB9DF1FACCEB2BADF91DB34B63C5AA7A85DB515ADE0BDCBE1606", forHTTPHeaderField: "Cookie")
        //request.httpBody = ""
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(String(describing: error))
                print("One")
                //semaphore.signal()
                return
            }
            print(String(data: data, encoding: .utf8)!)
            print("two")
            //semaphore.signal()
        }
        
        task.resume()
        //semaphore.wait()
    }
}

struct RequestTextFull: View {
    
    let prayer: Prayer
    
    var body: some View {
        Text(prayer.text)
    }
}

struct RequestTextMini: View {
    
    let prayer: Prayer
    
    var body: some View {
        Text(prayer.text)
            .lineLimit(4)
    }
}

struct PrayerViewTest_Previews: PreviewProvider {
    static var previews: some View {
        PrayerViewTest(prayer: Prayer(allowComments: true, isPublic: true, modifiedDateTime: "12345", modifiedAuditValuesAlreadyUpdated: true, guid: "45678", createdDateTime: "4-5-21", isApproved: true, isActive: true, text: "String fo random text", isUrgent: false, campusID: 4, firstName: "First", id: 45, approvedOnDateTime: "5-7-22"))
    }
}
