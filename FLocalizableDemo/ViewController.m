//
//  ViewController.m
//  FLocalizableDemo
//
//  Created by AoChen on 2019/7/22.
//  Copyright © 2019 Ac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *aa = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    aa.text = MESSAGE_OK;
    [self.view addSubview:aa];
    
    UILabel *aa01 = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 100, 30)];
    aa01.text = MESSAGE_Cancel;
    [self.view addSubview:aa01];
    
}

@end
