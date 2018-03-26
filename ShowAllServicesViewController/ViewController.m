//
//  ViewController.m
//  ShowAllServicesViewController
//
//  Created by 何松泽 on 2018/3/26.
//  Copyright © 2018年 HSZ. All rights reserved.
//

#import "ViewController.h"
#import "ShowAllServicesView.h"

@interface ViewController ()

@property (nonatomic, strong) ShowAllServicesView *companyServices;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *arr = [[NSArray alloc] initWithObjects:@"假数据",@"假数据",@"假数据",@"假数据",@"假数据", nil];
    self.companyServices = [[ShowAllServicesView alloc] initWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.companyServices setDataArr:arr title:@"海那边服务"];
    [self.view addSubview:self.companyServices];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
