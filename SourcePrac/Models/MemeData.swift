//
//  MemeData.swift
//  SourcePrac
//
//  Created by Chun-Li Cheng on 2022/6/13.
//

import Foundation

struct MemeData: Codable {
    let id: Int
    let image: String
    let caption: String
    let category: String
}

extension MemeData: CustomStringConvertible {
    var description: String {
        return "編號\(id)的圖片: \(caption)"
    }
}

/*
    當宣告的Model(欲解析的Model) 名稱錯誤時, 顯示The data couldn’t be read because it is missing. / keyNotFound
 
    當型別錯誤時, 顯示The data couldn’t be read because it isn’t in the correct format. / typeMismatch
 
    當url錯誤時, 顯示The data couldn’t be read because it isn’t in the correct format. / dataCorrupted
    
 */
