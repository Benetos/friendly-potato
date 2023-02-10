//
//  EmptyModel.swift
//  PrayerRock
//
//  Created by Matt Ross on 2/8/23.
//
// MARK: This is here as a placeholder until I can figure out how to save the "Set-Cookie" header so I can reuse it in other calls.


import Foundation

struct Credentials: Codable {
  var password: String
  var persisted: String
  var username: String
  var cookie: String

  private enum CodingKeys: String, CodingKey {
    case password = "Password"
    case persisted = "Persisted"
    case username = "Username"
    case cookie = "Set Cookie"
  }
}
class Reusable: ObservableObject {
    
    @Published var resuable: [Credentials] = []
    
    func fetchCookie() async throws{
        let parameters = "{stuff here}"
        let postData = parameters.data(using: .utf8)
        
        var request = URLRequest(url: URL(string: "https://staff.faithchurch.com/api/Auth/Login")!,timeoutInterval: Double.infinity)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //request.addValue(".ROCK=FC4AF0BAC75F4E1CAFF5F0C8D42DA7CA92D3625A3B70F1947F604D0982C55DBB26DAF66C588EC37040FC4B3B4AEC62AF8509F2D16319B1F28AB5B86B2352932560BA573C7C56106D95F6142E9A31B9B29D4288B3F553F9A65D26D32AF61C88E2DD5C24F3", forHTTPHeaderField: "Cookie")
        
        request.httpMethod = "POST"
        request.httpBody = postData
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            //let contentTypeHeader = response.value(forHTTPHeaderField: "Content-Type")
            print(String(data: data, encoding: .utf8)!)
            print(response)
        }
        
        task.resume()
    }
}
