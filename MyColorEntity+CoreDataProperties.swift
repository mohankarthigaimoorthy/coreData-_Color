//
//  MyColorEntity+CoreDataProperties.swift
//  colored
//
//  Created by Mohan K on 23/03/23.
//
//

import Foundation
import CoreData


extension MyColorEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyColorEntity> {
        return NSFetchRequest<MyColorEntity>(entityName: "MyColorEntity")
    }

    @NSManaged public var colorValue: String?

}

extension MyColorEntity : Identifiable {

}
