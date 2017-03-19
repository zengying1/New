//
//  DetailViewController.m
//  NewsFourApp
//
//  Created by Oreal51 on 17/3/14.
//  Copyright © 2017年 chen. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton  *bt = [[UIButton alloc]initWithFrame:CGRectMake(10, 110, 40, 40)];
    bt.backgroundColor = [UIColor redColor];
    [self.view addSubview:bt];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
