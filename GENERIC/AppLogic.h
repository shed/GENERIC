//
//  AppLogic.h
//  GENERIC
//
//  Created by shed on 23/11/2019.
//  Copyright © 2019 shed. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppLogic : NSObject
{
NSString *temp;
}

@property (nonatomic, retain) NSString *temp;

+ (id)sharedManager;

@end

NS_ASSUME_NONNULL_END
