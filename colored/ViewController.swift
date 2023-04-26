//
//  ViewController.swift
//  colored
//
//  Created by Mohan K on 22/03/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var context: NSManagedObjectContext!
    var mycolorEntity: MyColorEntity!
    
    @IBOutlet weak var changeBtn: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
        let fetchRequest =  NSFetchRequest<MyColorEntity>(entityName: "MyColorEntity")
        
        do {
            let results = try context .fetch(fetchRequest)
            if results.count > 0{
                mycolorEntity = results[0]
            }
            else {
                let entity = NSEntityDescription.entity(forEntityName: "MyColorEntity", in: context)!
                mycolorEntity = MyColorEntity(entity: entity, insertInto: context)
                mycolorEntity.colorValue = "red"
            }
        }
        catch let error as NSError{
            print("Error fetching color : \(error.localizedDescription)")
        }
//        view.backgroundColor = UIColor(named: mycolorEntity.colorValue!)
        print ("mycolorEntity.colorValue : \(mycolorEntity.colorValue)" )
        
        
    }
    @IBAction func change(_ sender: Any) {
        let newColor = "green"
        mycolorEntity.colorValue = newColor
        do {
            try context.save()
            view.backgroundColor = UIColor(named: newColor)
            print("newColor: \(newColor) ")
        }
        catch let error as NSError {
            print("Error saving color : \(error.localizedDescription)")
        }
     
    }
}

