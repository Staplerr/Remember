//
//  Pastebin.swift
//  Private Dictionary
//
//  Created by admin on 23/6/2567 BE.
//

import Foundation

let APIKEY = "jHlcDIbVlC-x1YKQjKfOsq1MUbSH979M"




































import UIKit
func Publish(dict:[String:String]) async throws -> String {

    var pasteString = ""
    
    let jsonEncoder = JSONEncoder()
    jsonEncoder.outputFormatting = .prettyPrinted

    do {
        let encodePerson = try jsonEncoder.encode(dict)
        pasteString = String(data: encodePerson, encoding: .utf8)!
        print(pasteString)
    } catch {
        print(error.localizedDescription)
        return "Error"
    }
    
    
    let url = URL(string: "https://pastebin.com/api/api_post.php")!

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.httpBody = "api_dev_key=\(APIKEY)&api_paste_code=\(pasteString)&api_option=paste".data(using: .utf8)
    var (data, response) = try await URLSession.shared.data(for: request)
    let statusCode = (response as! HTTPURLResponse).statusCode
    if statusCode == 200 {
        print("SUCCESS")
        let dataurl = "\(String(data: data,encoding: .utf8)!)"
//           let range:CountableClosedRange = 31...38
        var code = ""
        var index = 0
        for i in dataurl {
            if(index>20){
                code += "\(i)"
            }
            index += 1
        }
        print(code)
        return code
    } else {
        print("FAILURE")
        print(String(data: data,encoding: .utf8))
        return "Error"
    }
}
func Download(dict:[String:String]) async throws -> String {

    var pasteString = ""
    
    let jsonEncoder = JSONEncoder()
    jsonEncoder.outputFormatting = .prettyPrinted

    do {
        let encodePerson = try jsonEncoder.encode(dict)
        pasteString = String(data: encodePerson, encoding: .utf8)!
        print(pasteString)
    } catch {
        print(error.localizedDescription)
        return "Error"
    }
    
    
    let url = URL(string: "https://pastebin.com/api/api_post.php")!

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.httpBody = "api_dev_key=\(APIKEY)&api_paste_code=\(pasteString)&api_option=paste".data(using: .utf8)
    var (data, response) = try await URLSession.shared.data(for: request)
    let statusCode = (response as! HTTPURLResponse).statusCode
    if statusCode == 200 {
        print("SUCCESS")
        let dataurl = "\(String(data: data,encoding: .utf8)!)"
//           let range:CountableClosedRange = 31...38
        var code = ""
        var index = 0
        for i in dataurl {
            if(index>20){
                code += "\(i)"
            }
            index += 1
        }
        print(code)
        return code
    } else {
        print("FAILURE")
        print(String(data: data,encoding: .utf8))
        return "Error"
    }
}
