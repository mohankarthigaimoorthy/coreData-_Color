//
//  Dummy.swift
//  colored
//
//  Created by Mohan K on 23/03/23.
//
//
//import Foundation
//
//
//@objc(Consumer)
//
//public class Consumer: NSManagedObject {
//
//    @nonobjc public class func fetchRequest() -> NSFetchRequest<Consumer> {
//        return NSFetchRequest<Consumer>(entityName: "Consumer")
//    }
//
//    @NSManaged public var color: String?
//
//}
//
//extension Consumer : Identifiable {
//
//}


// Mark: - View Controller


//let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//
//var consumer:[Consumer]?
//
//fetchUser()
//
//
//func fetchUser() {
//    do {
//        self.consumer = try context.fetch(Consumer.fetchRequest())
//      
//    }
//    catch{
//        
//    }
//}
//
//
//
//let consume = Consumer(context: self.context)
//let colorName = "red"
//var color : UIColor
//    
//    switch colorName {
//    case "red" :
//        color = UIColor.red
//    case "green" :
//        color = UIColor.green
//    case "blue":
//        color = UIColor .blue
//    case "gray":
//        color = UIColor.gray
//    default:
//        color = UIColor.black
//    }
//if let color = consume.color {
//    consume.color = color
//    
//    view.backgroundColor = UIColor(named: color)
//    print("color: \(color)" )
//}
//do {
//    try self.context.save()
//    print("context: \(context)")
//}
//catch{
//    
//}
//self.fetchUser()
