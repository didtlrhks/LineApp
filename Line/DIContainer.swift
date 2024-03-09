//
//  DIContainer.swift
//  Line
//
//  Created by 양시관 on 3/9/24.
//

import Foundation


import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    var searchDataController: DataControllable
    var navigationRouter: NavigationRoutable & ObservableObjectSettable
    var appearanceController: AppearanceControllerable & ObservableObjectSettable
    
    init(services: ServiceType,
         searchDataController: DataControllable = SearchDataController(),
         navigationRouter: NavigationRoutable & ObservableObjectSettable = NavigationRouter(),
         appearanceController: AppearanceControllerable & ObservableObjectSettable = AppearanceController()) {
        self.services = services
        self.searchDataController = searchDataController
        self.navigationRouter = navigationRouter
        self.appearanceController = appearanceController
        
        self.navigationRouter.setObjectWillChange(objectWillChange)
        self.appearanceController.setObjectWillChange(objectWillChange)
    }
}

extension DIContainer {
    static var stub: DIContainer {
        .init(services: StubServices())
    }
}
