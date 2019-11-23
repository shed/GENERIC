//
//  ViewController.m
//  GENERIC
//
//  Created by shed on 23/11/2019.
//  Copyright © 2019 shed. All rights reserved.
//

#import "ViewController.h"
#import "AppLogic.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    DLog(@"loaded PrefixHeader.pch, you should have a look at this file");
    //
    DLog(@"also loaded AppLogic, example called here:%@",[[AppLogic sharedManager] temp]);
    
    
}


@end
