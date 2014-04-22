//
//  ViewController.h
//  TableItemSelection
//
//  Created by Gagan on 22/04/14.
//  Copyright (c) 2014 Gagan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableIndexSet *mutableIdexSet;
}
@property (nonatomic, retain) NSIndexPath* checkedIndexPath;     //Used to store Sigle Selected Cell
@property (weak, nonatomic) IBOutlet UITableView *mySelectionTableView;

@end
