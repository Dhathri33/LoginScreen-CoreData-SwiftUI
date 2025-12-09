//
//  User+CoreDataProperties.swift
//  LoginScreen-CoreData-SwiftUI
//
//  Created by Dhathri Bathini on 12/9/25.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?

}

extension User : Identifiable {

}
