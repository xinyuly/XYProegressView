//
//  XYCell.m
//  XYProegreeView
//
//  Created by lixinyu on 16/8/10.
//  Copyright © 2016年 xiaoyu. All rights reserved.
//

#import "XYCell.h"
#import "XYProgressView.h"
@interface XYCell ()

@property (weak, nonatomic) IBOutlet XYProgressView *XYView;

@end
@implementation XYCell

- (void)setData:(CGFloat)progree
{
    self.XYView.progress = progree;
}

@end
