//
//  AlertModule.swift
//  NativeAlerts
//
//  Created by Andrii Doroshenko on 06.07.2022.
//

import Foundation

@objc(AlertModule)
class AlertModule: RCTViewManager {
  
 @objc
 func invokeModal() {
   DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
               let alert = UIAlertController(title: "title", message: "Alert just at launch", preferredStyle: .alert)

                let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in}

                alert.addAction(OKAction)

                RCTSharedApplication()?.keyWindow?.rootViewController?.present(alert, animated: false, completion: nil)
    }
 }
  @objc
   override static func requiresMainQueueSetup() -> Bool {
    return true;
  }
}
