//
//  AlertModule.swift
//  NativeAlerts
//
//  Created by Andrii Doroshenko on 06.07.2022.
//

import Foundation

@objc(AlertModule)
class AlertModule: UIAlertController {
  @objc
  func showAlert() {
    let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
  @objc
  static func requiresMainQueueSetup() ->Bool{
    return true;
  }
}

