//
//  StocksDetailViewController.h
//  ContainerViewAssignment
//
//  Created by Fredrick Ohen on 10/17/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StocksTableViewController.h"

@protocol StocksDetailViewControllerDelegate <NSObject>

-(void) stocksDetailViewControllerUpdated: (NSString *) text;

@end

@interface StocksDetailViewController : UIViewController<StocksDetailViewControllerDelegate>
@property (nonatomic,weak) IBOutlet UILabel *updatedStocksLabel;
@property (nonatomic,weak) id <StocksDetailViewControllerDelegate> delegate;


@end
