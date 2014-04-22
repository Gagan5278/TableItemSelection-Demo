//
//  TableCellSelection.m
//  TableItemSelection
//
//  Created by Gagan on 22/04/14.
//  Copyright (c) 2014 Gagan. All rights reserved.
//
#define imageViewWidth 30
#define imageViewHeight 30
#import "TableCellSelection.h"

@implementation TableCellSelection
@synthesize selectionImageView;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor=[UIColor clearColor];
        self.textLabel.textColor=[UIColor darkGrayColor];
        self.textLabel.font=[UIFont systemFontOfSize:14];
        self.selectionImageView=[[UIImageView alloc]init];
        [self addSubview:self.selectionImageView];
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.selectionImageView.frame=CGRectMake([UIScreen mainScreen].bounds.size.width-imageViewWidth-5, 7,  imageViewWidth,imageViewHeight);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

-(void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:YES];
    if(highlighted)
    {
        self.backgroundColor=self.cellSelectionColor;
    }
    else{
        self.backgroundColor=[UIColor clearColor];
    }
}

@end
