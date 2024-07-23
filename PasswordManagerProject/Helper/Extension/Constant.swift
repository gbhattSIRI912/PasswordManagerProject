//
//  Constant.swift
//  PasswordManagerProject
//
//  Created by Gaurav Bhatt on 20/07/24.
//

import Foundation
import CryptoKit

var secretKey = SymmetricKey(size: .bits256)

enum userDefaultData: String {
    case authentication = "authentication"
    
    func saveDefaultValue<T: Equatable>(_ value: T) {
        UserDefaults.standard.set(value, forKey: self.rawValue)
    }
    
    func getDefaultValue() -> Any {
        if let value = UserDefaults.standard.object(forKey: self.rawValue) { return value } else { return "" }
        
    }
    
    func getArrayValue() -> [Any] {
        if let value = UserDefaults.standard.array(forKey: self.rawValue) { return value} else {return [Any]()}
    }
    
    func deleteValue() {
        UserDefaults.standard.removeObject(forKey: self.rawValue)
    }
}
