//
//  twoViewController.m
//  CoreAnimation
//
//  Created by zhang on 15/11/17.
//  Copyright © 2015年 zhangwei. All rights reserved.
//

#import "twoViewController.h"


@interface twoViewController ()


@property (weak, nonatomic) IBOutlet UITextField *colorFextField;



@property (weak, nonatomic) IBOutlet UISlider *redSlider;

@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;


@end


@implementation twoViewController


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (self.existingColor) {
        self.navigationItem.rightBarButtonItem = nil;
    }
    
    
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    self.colorDescription.name = self.colorFextField.text;
    self.colorDescription.color = self.view.backgroundColor;
    
}


-(void)viewDidLoad
{
    [super viewDidLoad];
    UIColor *color = self.colorDescription.color;
    
     CGFloat red,green,blue;
    [color getRed:&red green:&green blue:&blue alpha:nil];
    
    
    self.redSlider.value = red;
    self.blueSlider.value = blue;
    self.greenSlider.value = green;
    
    self.view.backgroundColor = color;
    self.colorFextField.text = self.colorDescription.name;
    
    
}


-(IBAction)changeColor:(id)sender{
    
    float red = self.redSlider.value;
    float green = self.greenSlider.value;
    float blue = self.blueSlider.value;
    
    UIColor *newColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    self.view.backgroundColor = newColor;
    
}


- (IBAction)dismiss:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



    
@end
