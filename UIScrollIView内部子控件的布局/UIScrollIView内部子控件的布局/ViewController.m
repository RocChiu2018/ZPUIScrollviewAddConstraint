//
//  ViewController.m
//  UIScrollIView内部子控件的布局
//
//  Created by apple on 2017/1/9.
//  Copyright © 2017年 apple. All rights reserved.
//

/**
 在storyboard文件中给scrollview控件添加约束的时候，必须要设置scrollview控件的contentsize，否则会出现红色的报错。contentsize是由scrollview控件内部的子控件决定的，这些内部的子控件必须要明确宽和高，并且宽和高不依赖于scrollview控件。
 */
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//在视图完全显示出来以后再打印
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%@", NSStringFromCGRect(self.scrollView.frame));
    NSLog(@"%@", NSStringFromCGSize(self.scrollView.contentSize));
}

@end
