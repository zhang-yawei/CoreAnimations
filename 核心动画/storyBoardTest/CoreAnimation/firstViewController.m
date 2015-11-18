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

    
    self.viewToAnimation.layer;
    CATransform3DMakeTranslation(1, 2, 1);
    
    
    
    
}

- (IBAction)secondButton:(id)sender {
    
    
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
