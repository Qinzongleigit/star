//
//  ViewController.m
//  star
//
//  Created by qin on 2017/9/19.
//  Copyright © 2017年 qin. All rights reserved.
//

#import "ViewController.h"
#import "SXStarView.h"



@interface ViewController ()

@property (nonatomic,strong) SXStarView*starView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SXStarView*starView=[[SXStarView alloc]init];
    
    [starView initWithFrame:CGRectMake(100, 100, 100, 30) andStarNum:5];
    [self.view addSubview:starView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
