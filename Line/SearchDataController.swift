//
//  SearchDataController.swift
//  Line
//
//  Created by 양시관 on 3/9/24.
//

import Foundation


import Foundation
import CoreData

protocol DataControllable {
    var persistantContainer: NSPersistentContainer { get set }
}

class SearchDataController: DataControllable {
    
    var persistantContainer = NSPersistentContainer(name: "Search")
    
    init() {
        persistantContainer.loadPersistentStores { description, error in
            if let error {
                print("Core data failed: ", error.localizedDescription)
            }
        }
    }
}
