//
//  AccountCoordinatorImpl.swift
//  AccountModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//
import RouterLibrary
import CoordinatorLibrary
import Foundation
import UIKit

open class AccountCoordinatorImpl:BaseCoordinator,AccountCoordinator{
    
    private weak var flowListener: CoordinatorFlowListener?
    
    
    //         dependenciesManager: CoordinatorDependencies = DefaultCoordinatorDependencies(),  //if you want nested level of coordinated use it
    public init(navigationController: UINavigationController,
         flowListener: CoordinatorFlowListener?) {
        //        super.init()
        super.init(navigationController: navigationController)
        self.flowListener = flowListener
        self.navigationController = navigationController
        self.dependencies = nil
        
    }
    
    open override func start() {
        let bundle = Bundle.module
        let vc = CreateAccountViewController.instantiate(storyboardBundle:bundle,storyboardName: "AccountModule")
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    deinit {
        print("deinit for AccountCoordinatorImpl")
    }

    open func createAccount() {
        let bundle = Bundle.module
//        let vc = BuyViewController.instantiate(storyboardName: "ShopModule")
//        vc.coordinator = self
//        self.navigationController.pushViewController(vc, animated: true)
    }
}
