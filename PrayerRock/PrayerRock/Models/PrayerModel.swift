//
//  PrayerModel.swift
//  PrayerRock
//
//  Created by Matt Ross on 12/13/22.
//

import Foundation

@MainActor
class PrayerModel: ObservableObject {
    
    @Published var prayer: [Prayer] = []
    
    let headers = ["cookie": ".ROCK=F2D12E19E4A6634535CCFE2D7CAF278289129A2242EF62359BF76EA3249231894CA2A21AA51E46CCEE1FDB93BDAC268F30CAF74646014BD4437697DF9D0B2C1F9A6CCA986A03D525EC41FB9DF1FACCEB2BADF91DB34B63C5AA7A85DB515ADE0BDCBE1606"]
    let postData = NSData(data: "".data(using: String.Encoding.utf8)!)
    
    func fetchPrayer() async throws {
        guard let url = URL(string:"https://website.com/api$orderby=ExpirationDate&loadAttributes=simple") else { fatalError("Missing URL")}
        
        var request = URLRequest (url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        request.httpBody = postData as Data
        
        
        let (data, response) = try await URLSession.shared.data(for: request)
        let prayerResponse = try JSONDecoder().decode([Prayer].self, from: data)
        prayer =  prayerResponse
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse)

        //print(prayer)
    }
    
    func login() async throws{
        let parameters = "{}"
        let postData = parameters.data(using: .utf8)

        var request = URLRequest(url: URL(string: "https://swebsite.com/api/Login")!,timeoutInterval: Double.infinity)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //request.addValue(".ROCK=FC4AF0BAC75F4E1CAFF5F0C8D42DA7CA92D3625A3B70F1947F604D0982C55DBB26DAF66C588EC37040FC4B3B4AEC62AF8509F2D16319B1F28AB5B86B2352932560BA573C7C56106D95F6142E9A31B9B29D4288B3F553F9A65D26D32AF61C88E2DD5C24F3", forHTTPHeaderField: "Cookie")

        request.httpMethod = "POST"
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            //semaphore.signal()
            return
          }
          print(String(data: data, encoding: .utf8)!)
          print(response)
          //semaphore.signal()
        }

        task.resume()
        //semaphore.wait()
    }
}
