//
//  PaletteViewController.m
//  CoreAnimation
//
//  Created by zhang on 15/11/17.
//  Copyright © 2015年 zhangwei. All rights reserved.
//

#import "PaletteViewController.h"
#import "twoViewController.h"
#import "colorDescription.h"
@interface PaletteViewController ()

@property(nonatomic,copy)NSMutableArray *colors;

@end

@implementation PaletteViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}
-(void)viewDidLoad
{
    [super viewDidLoad];

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.colors.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    colorDescription *color = self.colors[indexPath.row];
    cell.textLabel.text = color.name;
 
    return cell;
 
}

// 覆盖colos 的get方法
-(NSMutableArray *)colors
{
    if(!_colors){
        _colors = [NSMutableArray array];
        colorDescription *cd = [[colorDescription alloc]init];
        [_colors addObject:cd];
    }
    return _colors;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"newcolor"]) {
        
        colorDescription *color = [[colorDescription alloc]init];
        [self.colors addObject:color];

        UINavigationController *nv = (UINavigationController *)segue.destinationViewController;
        twoViewController *colorvc = (twoViewController *)[nv topViewController];
        colorvc.colorDescription = color;
        
    }
    else if([segue.identifier isEqualToString:@"existcolor"]){
        
        NSIndexPath *ip = [self.tableView indexPathForCell:sender];
        
        colorDescription *color = self.colors[ip.row];
        
        twoViewController *twoVC = (twoViewController *)segue.destinationViewController;
        twoVC.colorDescription = color;
        twoVC.existingColor = YES;

    }

}

@end
