//
//  MultiSelection.m
//  TableItemSelection
//
//  Created by Gagan on 22/04/14.
//  Copyright (c) 2014 Gagan. All rights reserved.
//

#import "MultiSelection.h"
#import "TableCellSelection.h"
@interface MultiSelection ()

@end

@implementation MultiSelection
@synthesize mutableIdexSet;


- (void)viewDidLoad
{
    [super viewDidLoad];
    mutableIdexSet=[[NSMutableIndexSet alloc]init];
}

#pragma mark-TabelView delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //return your array count from here; Comment Below line
    return 50;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier=@"CellIdentifier";
    TableCellSelection *cell=(TableCellSelection*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil)
    {
        cell=[[TableCellSelection alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.cellSelectionColor=[UIColor blackColor];
    }
    
    if([self.mutableIdexSet containsIndex:indexPath.row])
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    cell.textLabel.text=[NSString stringWithFormat:@"Index Path is %d",indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if([self.mutableIdexSet containsIndex:indexPath.row])
    {
        UITableViewCell* uncheckCell = [tableView cellForRowAtIndexPath: [NSIndexPath indexPathForRow:indexPath.row inSection:0]];
        uncheckCell.accessoryType = UITableViewCellAccessoryNone;
        [self.mutableIdexSet removeIndex:indexPath.row];
    }
     else
    {
        UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        [self.mutableIdexSet addIndex:indexPath.row];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
