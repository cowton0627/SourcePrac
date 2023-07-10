//
//  APICaller.swift
//  SourcePrac
//
//  Created by Chun-Li Cheng on 2022/6/13.
//

import Foundation

//open
class APICaller
//: NSObject
{
    static let shared = APICaller()
//    open class var shared: APICaller { get }
    
    static let APIKey = "oFcE0EozKr7mGjkuRPgj2ajkHKnRLXZW7aq8BZaG"
    
    private func retrieveData() {
        guard let url = URL(string: "") else { return }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) {
            data, resp, err in
            
            guard data == data, err == nil else { return }

            do {
                let decoder = JSONDecoder()
                let data = try decoder.decode(FilmData.self, from: data!)
                
                print(data)
            }
            catch {
                print(err!)
            }
            
        }.resume()
        
    }
    
    // 取得即時迷因資料
    func retrieveMemeData(completionHandler:
                          @escaping (MemeData?) -> () ) {
        guard let url = URL(string: "https://some-random-api.ml/meme") else { return }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) {
            data, resp, err in
            guard let data = data, err == nil else { return }
            
            do {
                let meme = try JSONDecoder().decode(MemeData.self, from: data)
                completionHandler(meme)
                print(meme)
            }
            catch {
                completionHandler(nil)
                print(error.localizedDescription)
            }

        }.resume()
    }
    
    
    func retrieveGenericPrepare(completion:
                                @escaping (Result<MemeData,Error>) -> Void) {
        // 先有url的string, 再有url
        guard let url = URL(string: "https://some-random-api.ml/meme") else { return }
        // 創建urlSession, 利用request
        URLSession.shared.dataTask(with: URLRequest(url: url)) {
            data, resp, err in
            // 當有data 且 錯誤為nil時
            guard let data = data, err == nil else { return }
            
            do {
                // 解析這個JSON格式的 data 為我們的Model, 將結果裝到常數result中
                // 因為decode會 throw 我們的要解析的物件, 所以用try試試看
                let result = try JSONDecoder().decode(MemeData.self,
                                                      from: data)
                // 逃逸閉包裡帶入result
                completion(Result.success(result))
                print(result)
            }
            catch {
                // 逃逸閉包裡帶入error
                completion(Result.failure(error))
                // error加上.localizedDescription可以顯示出客製化的錯誤訊息
                print(error.localizedDescription)
            }
            
        }.resume()
    }
    
    
}


