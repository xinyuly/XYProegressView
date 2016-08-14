//
//  ViewController.m
//  XYProegreeView
//
//  Created by lixinyu on 16/8/10.
//  Copyright © 2016年 xiaoyu. All rights reserved.
//

#import "ViewController.h"
#import "XYCell.h"

static  NSString *Identifer = @"Identifer";

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.frame = self.view.frame;
    [self.view addSubview:self.tableView];
    [self.tableView registerNib:[UINib nibWithNibName:@"XYCell" bundle:nil] forCellReuseIdentifier:Identifer];
    self.arr = @[@(0.2),@(0.1),@(0),@(0),@(0),@(0.4),@(0.6),@(0),@(0.2),@(0.1),@(0),@(0),@(0),@(0.4),@(0.6),@(0),@(0.2),@(0.1),@(0),@(0),@(0),@(0.4),@(0.6),@(0)];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XYCell *cell = [self.tableView dequeueReusableCellWithIdentifier:Identifer forIndexPath:indexPath];
    CGFloat data = [self.arr[indexPath.row] floatValue];
    [cell setData:data];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}



@end
