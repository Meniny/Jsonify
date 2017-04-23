//
//  JsonifyDemo.swift
//  JsonifyDemo
//
//  Created by Meniny on 2017-04-23.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import Foundation
import Jsonify

public enum DemoJSONFile: String {
    case array = "simple_array"
    case dictionary = "simple_dictionary"
    
    public func path() -> String? {
        return Bundle.main.path(forResource: self.rawValue, ofType: "json")
    }
}

public func test() {
    if let str2 = getJSON(file: .array) {
        print("\(DemoJSONFile.array.rawValue)")
        let array = Jsonify(string: str2)
        for i in array.arrayValue {
            let id = i["id"].intValue
            let name = i["name"].stringValue
            print("id=\(id)\nname=\(name)")
        }
    }
    if let str3 = getJSON(file: .dictionary) {
        print("\(DemoJSONFile.dictionary.rawValue)")
        let dict = Jsonify(string: str3)
        let id = dict["id"].intValue
        let name = dict["name"].stringValue
        print("id=\(id)\nname=\(name)")
    }
}

public func getJSON(file: DemoJSONFile) -> String? {
    if let path = file.path() {
        do {
                let string = try String(contentsOfFile: path)
                return string
        } catch _ {
            return nil
        }
    }
    return nil
}
