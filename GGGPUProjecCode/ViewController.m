//
//  ViewController.m
//  GGGPUProject
//
//  Created by dujia on 28/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import "ViewController.h"
#import "GGProtocolManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn setTitle:@"GGShow" forState:UIControlStateNormal];
    btn.frame = CGRectMake(10, 60, 100, 50);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(start:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
                             
     UIButton *btn_Masonry = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     
     [btn_Masonry setTitle:@"GGMasonry" forState:UIControlStateNormal];
     btn_Masonry.frame = CGRectMake(10, CGRectGetMaxY(btn.frame) + 5, 100, 50);
     [btn_Masonry setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
     [btn_Masonry addTarget:self action:@selector(start:) forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:btn_Masonry];
}

- (void) start:(UIButton *)btn
{
    id<GGProtocolManagerProtocol> manager = [GGProtocolManager serviceProvideForName:btn.titleLabel.text];
    [manager urlFunction:btn.titleLabel.text rootVC:self];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
