//
//  AlertModule.m
//  NativeAlerts
//
//  Created by Andrii Doroshenko on 06.07.2022.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(AlertModule, NSObject);

RCT_EXTERN_METHOD(showAlert);

@end
