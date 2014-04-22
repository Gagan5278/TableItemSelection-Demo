//
//  TableCellSelection.h
//  TableItemSelection
//
//  Created by Gagan on 22/04/14.
//  Copyright (c) 2014 Gagan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCellSelection : UITableViewCell
@property(nonatomic,retain)UIImageView *selectionImageView;    //Use Costom check mark  Image Selection & Deselection 
@property(nonatomic,retain)UIColor *cellSelectionColor;                  //Add your custom color for selection on cell
@end
