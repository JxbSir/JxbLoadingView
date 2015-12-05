//
//  ViewController.m
//  JxbLoadingView
//
//  Created by Peter on 15/12/5.
//  Copyright © 2015年 Peter. All rights reserved.
//

#import "ViewController.h"
#import "JxbLoadingView.h"

@interface ViewController ()
@property(nonatomic,strong)JxbLoadingView   *loadingView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* btnStart = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 200, 40)];
    [btnStart setTitle:@"start" forState:UIControlStateNormal];
    [btnStart setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnStart addTarget:self action:@selector(onStart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnStart];

    
    UIButton* btnSuc = [[UIButton alloc] initWithFrame:CGRectMake(30, 160, 200, 40)];
    [btnSuc setTitle:@"Success" forState:UIControlStateNormal];
    [btnSuc setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnSuc addTarget:self action:@selector(onSuccess) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnSuc];
    
    UIButton* btnFail = [[UIButton alloc] initWithFrame:CGRectMake(30, 220, 200, 40)];
    [btnFail setTitle:@"Failure" forState:UIControlStateNormal];
    [btnFail setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnFail addTarget:self action:@selector(onFailure) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnFail];
    
    
    self.loadingView = [[JxbLoadingView alloc] initWithFrame:CGRectMake(60, 300, 100, 100)];
    self.loadingView.lineWidth = 4;
    self.loadingView.strokeColor = [UIColor blueColor];
    [self.view addSubview:self.loadingView];
}


- (void)onStart {
    [self.loadingView startLoading];
}

- (void)onSuccess {
    [self.loadingView finishSuccess:nil];
}

- (void)onFailure {
    [self.loadingView finishFailure:nil];
}


@end
