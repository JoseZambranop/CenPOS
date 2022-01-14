//
//  Ado.swift
//  CenPOS
//
//  Created by Jose Luis Zambrano on 28/12/21.
// merchants: 10000009

import Foundation


final class Ado{
    static let shared = Ado()
    private let kBaseUrl = "https://ww3.cenpos.net/api/merchants/"
    private let kStatusOk = 200...299
    var authorization: String = ""
    func getTransactions(){
        authorization = Ado.encodeBase64Credentials(user: "jon", password: "Cenpos@2014")
        //let url = URL(string: "\(kBaseUrl)\(merchantId)/transactions?begin=\(begin)&end=\(end1)&excludeTransactionType=%27Void%27%2C%27Auth%27%2C%27Authorization%27%2C%27PartialReversal%27%2C%27SpecialPartialReversal%27%2C%27InitialCash%27%2C%27EndOfDayCash%27%2C%27ReplenishCash%27%2C%27Overage%27%2C%27Shortage%27&excludeVoid=true&includeSignature=false&merchantId=\(merchantId)&result=0&user=\(user)")
        let url = URL(string: "https://ww3.cenpos.net/api/merchants/10000009/transactions?begin=2022-01-04&end=2022-01-04&excludeTransactionType=%27Void%27%2C%27Auth%27%2C%27Authorization%27%2C%27PartialReversal%27%2C%27SpecialPartialReversal%27%2C%27InitialCash%27%2C%27EndOfDayCash%27%2C%27ReplenishCash%27%2C%27Overage%27%2C%27Shortage%27&excludeVoid=true&includeSignature=false&merchantId=10000009&result=0&user=jon")
        var request = URLRequest(url: url!)
        request.addValue("Basic \(authorization)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if error == nil &&  data != nil {
                    let newsTrans = try? JSONDecoder().decode(Transaction.self, from: data)
                    // no se guarda la transactions
                    print(newsTrans)
                    print(newsTrans?.transactionType)
                }
            }
        }.resume()
        
    }
        
    func getUser(user: String, pass: String,merchantId: String){
        authorization = Ado.encodeBase64Credentials(user: user, password: pass)
        let url = URL(string: "\(kBaseUrl)\(merchantId)/login")
        var request = URLRequest(url: url!)
              request.addValue("Basic \(authorization)", forHTTPHeaderField: "Authorization")
              request.addValue("application/json", forHTTPHeaderField: "Accept")
              request.addValue("application/json", forHTTPHeaderField: "Content-Type")
              URLSession.shared.dataTask(with: request) { data, response, error in
                  if let data = data {
                      if error == nil &&  data != nil {
                          let newsFeed = try? JSONDecoder().decode(LoginResponse.self, from: data)
                          print(newsFeed?.user?.password)
                          print(newsFeed?.user?.name)
                      }
                  }
              }.resume()
          }
     static func encodeBase64Credentials(user: String, password: String) -> String {
         guard let credentialData = "\(user):\(password)".data(using: String.Encoding.utf8) else {
             return ""
             }
             return credentialData.base64EncodedString(options: [])
     }
}
