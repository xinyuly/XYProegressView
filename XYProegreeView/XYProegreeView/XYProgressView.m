//
//  XYProgressView.m
//  XYProegreeView
//
//  Created by lixinyu on 16/8/10.
//  Copyright © 2016年 xiaoyu. All rights reserved.
//

#import "XYProgressView.h"

@implementation XYProgressView

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    [self setNeedsDisplay];
    
}

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect frame = CGRectMake(0, 0, self.progress*rect.size.width, rect.size.height);
    CGContextAddRect(ctx, frame);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextFillPath(ctx);
    CGContextDrawPath(ctx, kCGPathFill);
}
@end
