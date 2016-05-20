//
//  thirdViewController.m
//  CoreAnimation
//
//  Created by zhang on 15/11/17.
//  Copyright © 2015年 zhangwei. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()
{
    UIImageView *imageView;
}

@end

@implementation thirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    imageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:imageView];

    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonOne.frame = CGRectMake(100, 200, 100, 30);
    [buttonOne addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    buttonOne.tag = 1;
    buttonOne.backgroundColor = [UIColor greenColor];
    [buttonOne setTitle:@"开始" forState:UIControlStateNormal];
    [self.view addSubview:buttonOne];
    
    
    
    
    UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonTwo.frame = CGRectMake(200, 200, 100, 30);
    [buttonTwo addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [buttonTwo setTitle:@"结束" forState:UIControlStateNormal];
        buttonTwo.backgroundColor = [UIColor greenColor];
    buttonTwo.tag = 2;
    [self.view addSubview:buttonTwo];
    
    
}



- (IBAction)rotationClick:(id)sender {
    
//    CGAffineTransformMakeRotation(<#CGFloat angle#>)  创建一个仿射矩阵,
 //   CGAffineTransformRotate(<#CGAffineTransform t#>, <#CGFloat angle#>) // 改变一个仿射矩阵
    
//  CGAffineTransformRotate(self.transform, 2) 等于 CGAffineTransformMakeRotation(2)
    
    imageView.transform = CGAffineTransformIdentity;
    
    [UIView animateWithDuration:2 animations:^{
        imageView.transform =CGAffineTransformMakeTranslation(0, imageView.frame.size.height);
            //    imageView.transform = CGAffineTransformScale(CGAffineTransformMakeTranslation(0, imageView.frame.size.height), 1.f, -1.f);
        

    }];
    
    
    
}


-(void)buttonClick:(UIButton *)sender
{
//    [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionTransitionNone animations:^{
//        
////        imageView.transform = CGAffineTransformMakeRotation(10);
//        imageView.transform = CGAffineTransformMakeScale(0, 1);
//        
//        
//    } completion:nil];
    
    
    [UIView animateWithDuration:2 animations:^{
        imageView.transform = CGAffineTransformIdentity;
        imageView.transform =CGAffineTransformScale(imageView.transform, 1.f, -1.f);
        

    }];
    
    
    
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
