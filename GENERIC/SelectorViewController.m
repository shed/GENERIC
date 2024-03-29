//
//  SelectorViewController.m
//  GENERIC
//
//  Created by shed on 23/11/2019.
//  Copyright © 2019 shed. All rights reserved.
//

#import "SelectorViewController.h"

@interface SelectorViewController ()

@end

@implementation SelectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    myArray = [[NSMutableArray alloc]initWithObjects:
    @"New Delhi",@"Mumbai",@"Hyderabad",
    @"Bangalore",@"Sydney",@"Melbourne",
    @"Brisbane",@"Perth",@"New York",
    @"Los Angeles",@"Chicago",@"Boston", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [myArray count]/3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    static NSString *cellId = @"SimpleTableId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    NSString *stringForCell;
    if (indexPath.section == 0) {
        stringForCell= [myArray objectAtIndex:indexPath.row];
        
    }
    else if (indexPath.section == 1){
        stringForCell= [myArray objectAtIndex:indexPath.row+ [myArray count]/3];
        
    }
    else if (indexPath.section == 2){
        stringForCell= [myArray objectAtIndex:indexPath.row+ 2*[myArray count]/3];
    }
    [cell.textLabel setText:stringForCell];
    return cell;
}

// Default is 1 if not implemented
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:
(NSInteger)section{
    NSString *headerTitle;
    if (section==0) {
        headerTitle = @"India";
    }
    else if(section==1){
        headerTitle = @"Australia";
        
    }
    else{
        headerTitle = @"United States of America";
    }
    return headerTitle;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:
(NSInteger)section{
    NSString *footerTitle;
    if (section==0) {
        footerTitle = @"End of prominent cities of India";
    }
    else if (section==1){
        footerTitle = @"End of prominent cities of Australia";
        
    }
    else if (section==2){
        footerTitle = @"End of prominent cities of USA";
        
    }
    return footerTitle;
}

#pragma mark - TableView delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%ld Row:%ld selected and its data is %@",
          (long)indexPath.section,(long)indexPath.row,cell.textLabel.text);
}

@end
