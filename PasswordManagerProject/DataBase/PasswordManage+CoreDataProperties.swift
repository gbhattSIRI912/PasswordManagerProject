//
//  PasswordManage+CoreDataProperties.swift
//  PasswordManagerProject
//
//  Created by Gaurav Bhatt on 20/07/24.
//
//

import Foundation
import CoreData


extension PasswordManage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PasswordManage> {
        return NSFetchRequest<PasswordManage>(entityName: "PasswordManage")
    }

    @NSManaged public var accounttype: String?
    @NSManaged public var id: String?
    @NSManaged public var symetricKey: Data?
    @NSManaged public var userId: String?
    @NSManaged public var userPsw: String?

}
 
extension PasswordManage : Identifiable {

}
