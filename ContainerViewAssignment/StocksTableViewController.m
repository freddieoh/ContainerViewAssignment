//
//  StocksTableViewController.m
//  ContainerViewAssignment
//
//  Created by Fredrick Ohen on 10/17/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "StocksTableViewController.h"

@interface StocksTableViewController ()

@end

@implementation StocksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set the NSMutable Array
    stocks = [[NSMutableArray alloc]init];
    Stock *google = [[Stock alloc]init];
    google.name = @"Google";
    google.price = 14.6;
    [stocks addObject:google];
    
    
    Stock *apple = [[Stock alloc]init];
    apple.name = @"Apple";
    [stocks addObject:apple];
    
    Stock *facebook = [[Stock alloc]init];
    facebook.name = @"Facebook";
    [stocks addObject:facebook];
    
    Stock *tesla = [[Stock alloc]init];
    tesla.name = @"Tesla";
    [stocks addObject:tesla];
    
    Stock *microsoft = [[Stock alloc]init];
    microsoft.name = @"Microsft";
    [stocks addObject:microsoft];
    
    Stock *snapchat = [[Stock alloc]init];
    snapchat.name = @"Snapchat";
    [stocks addObject:snapchat];
    
}

-(void) stocksTableViewControllerStockSelected:(NSString *) text; {
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return stocks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Stock *stock = stocks[indexPath.row];
    
    cell.textLabel.text = stock.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Stock *stock = stocks [indexPath.row];
    [self.delegate stocksTableViewControllerStockSelected:stock];

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
