//
//  MultiSelection.h
//  TableItemSelection
//
//  Created by Gagan on 22/04/14.
//  Copyright (c) 2014 Gagan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultiSelection : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (nonatomic, retain)NSMutableIndexSet *mutableIdexSet;      //Used to store multiple selected cell

@end
