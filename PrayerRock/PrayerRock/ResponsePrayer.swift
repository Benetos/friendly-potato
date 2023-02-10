//
//  ResponsePrayer.swift
//  PrayerRock
//
//  Created by Matt Ross on 2/6/23.
//

import SwiftUI

struct ResponsePrayer: View {
    @State private var reply: String = ""
    var body: some View {
        //GroupBox {
            VStack {
                Text("Title Here")
                    .font(.headline)
                    .padding(.init(top: 15, leading: 0, bottom: 5, trailing: 0))
                //Spacer(minLength: 1)
                TextField("Type Your Reply Here", text: $reply, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .padding(.init(top: 0, leading: 5, bottom: 5, trailing: 5))
                    .lineLimit(5, reservesSpace: true)
                    .background(.regularMaterial)
                Button("Submit Response") {
                    
                }
                .buttonStyle(.borderedProminent)
                .padding(.init(top: 5, leading: 0, bottom: 15, trailing: 0))
            }
            //.background(.regularMaterial)
        //}
        //.background(.mint)
    }
}

struct ResponsePrayer_Previews: PreviewProvider {
    static var previews: some View {
        ResponsePrayer()
    }
}
