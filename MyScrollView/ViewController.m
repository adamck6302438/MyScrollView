//
//  ViewController.m
//  MyScrollView
//
//  Created by Frances ZiyiFan on 5/13/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *greenView;
@property (strong, nonatomic) UIView *blueView;
@property (strong, nonatomic) UIView *yellowView;

@property (strong, nonatomic) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    self.greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    self.greenView.backgroundColor = [UIColor greenColor];
    self.blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    self.blueView.backgroundColor = [UIColor blueColor];
    self.yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    
//    [self.view addSubview: self.redView];
//    [self.view addSubview: self.greenView];
//    [self.view addSubview: self.blueView];
//    [self.view addSubview: self.yellowView];
//
//    CGRect rect = [[self view]bounds];
//    rect.origin.y += 100;
//    [[self view] setBounds:rect];
    self.scrollView = [[MyScrollView alloc] initWithFrame:self.view.bounds];
    [self.scrollView addSubview: self.redView];
    [self.scrollView addSubview: self.greenView];
    [self.scrollView addSubview: self.blueView];
    [self.scrollView addSubview: self.yellowView];
    [self.view addSubview: self.scrollView];
//    [self setUpMyScrollView];
}



//- (void) setUpMyScrollView{
//
//
//
//}

@end
