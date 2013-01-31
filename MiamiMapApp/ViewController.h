//
//  ViewController.h
//  MiamiMapApp
//
//  Created by Eliot Fowler on 11/7/12.
//  Copyright (c) 2012 eliotfowler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView* tableView;

@end
