//
//  AppLogic.m
//  GENERIC
//
//  Created by shed on 23/11/2019.
//  Copyright © 2019 shed. All rights reserved.
//

#import "AppLogic.h"

@implementation AppLogic
@synthesize temp;

#pragma mark Singleton Methods

+ (id)sharedManager {
    static AppLogic *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
  if (self = [super init]) {
      temp = @"Default Property Value";
  }
  return self;
}

- (void)dealloc {
  // Should never be called, but just here for clarity really.
}

@end
