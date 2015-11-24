//
//  firstViewController.m
//  CoreAnimation
//
//  Created by zhang on 15/11/17.
//  Copyright © 2015年 zhangwei. All rights reserved.
//

#import "firstViewController.h"

@interface firstViewController ()


@property (weak, nonatomic) IBOutlet UIView *viewToAnimation;


@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (IBAction)firstButton:(id)sender {

    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"position.x";
    animation.fromValue = @0;
    animation.toValue = @400;
    animation.duration = 1;
    
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = YES;
    
    [self.viewToAnimation.layer addAnimation:animation forKey:@"basic"];
    
  //  self.viewToAnimation.layer.position =  CGPointMake(400,200);
 
    
    
    
}

- (IBAction)secondButton:(id)sender {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position.x";
    animation.values = @[ @0, @10, @-10, @10, @0 ];
    animation.keyTimes = @[ @0, @(1 / 6.0), @(3 / 6.0), @(5 / 6.0), @1 ];
    animation.duration = 0.4;
    
    animation.additive = YES;
    
    [self.viewToAnimation.layer addAnimation:animation forKey:@"shake"];
    
}

- (IBAction)thirdButton:(id)sender {
    
    
}


- (IBAction)forthButton:(id)sender {
    
    
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
