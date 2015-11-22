//
//  secondViewController.m
//  CoreAnimation
//
//  Created by zhang on 15/11/17.
//  Copyright © 2015年 zhangwei. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

{
    CALayer *_kkLayer;
    CABasicAnimation *_animation;
    CABasicAnimation *_rotateAnimation;
    CABasicAnimation *_scaoleAnimation;
}

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 初始化
    _kkLayer = [[CALayer alloc]init];
    _kkLayer.backgroundColor = [UIColor grayColor].CGColor;
    _kkLayer.frame = CGRectMake(10, 100, 40, 40);
    
    _kkLayer.cornerRadius = 5;
    [self.view.layer addSublayer:_kkLayer];
    
    
}



- (IBAction)moveBtn:(id)sender {
  
    _animation = [CABasicAnimation animationWithKeyPath:@"position"];
    
    _animation.fromValue = [NSValue valueWithCGPoint:_kkLayer.position];
    CGPoint toPoint = _kkLayer.position;
    toPoint.x = toPoint.x + 180;
    _animation.toValue = [NSValue valueWithCGPoint:toPoint];
    _animation.duration  = 2;
    _animation.autoreverses = YES;
    [_kkLayer addAnimation:_animation forKey:nil];
    

}

- (IBAction)revolution:(id)sender {
    
    _rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    _rotateAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    _rotateAnimation.toValue = [NSNumber numberWithFloat:6.0 * M_PI];
    _rotateAnimation.duration = 2;
    _rotateAnimation.autoreverses = YES;
    [_kkLayer addAnimation:_rotateAnimation forKey:nil];
    
    
}

- (IBAction)bigSmall:(id)sender {
    
    _scaoleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    _scaoleAnimation.duration = 2;
    _scaoleAnimation.autoreverses = YES; // 还原动画,反向执行一次
    _scaoleAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    _scaoleAnimation.toValue = [NSNumber numberWithFloat:2.5];
    _scaoleAnimation.fillMode = kCAFillModeBackwards;
    [_kkLayer addAnimation:_scaoleAnimation forKey:nil];
    
}


- (IBAction)all:(id)sender {

  // 动画组
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = [NSArray arrayWithObjects:_animation,_scaoleAnimation,_rotateAnimation,nil];
    group.duration = 2;
    group.autoreverses = YES;
    [_kkLayer addAnimation:group forKey:nil];
    
    
    
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
