//
//  SelectorViewController.h
//  GENERIC
//
//  Created by shed on 23/11/2019.
//  Copyright © 2019 shed. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SelectorViewController : UIViewController <UITableViewDataSource,
UITableViewDelegate>

{
    IBOutlet UITableView *myTable;
    NSMutableArray *myArray;
}

@end

NS_ASSUME_NONNULL_END
