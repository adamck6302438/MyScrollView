//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Frances ZiyiFan on 5/13/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView()

@property (assign, nonatomic) CGSize contentSize;

@end

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
//- (void)drawRect:(CGRect)rect {
//
//}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupGestureRecognizer];
        self.userInteractionEnabled = YES;
        self.contentSize = self.frame.size;
        NSLog(@"%f", self.contentSize);
    }
    return self;
}

- (void) setupGestureRecognizer{
    UIPanGestureRecognizer *recog = [[UIPanGestureRecognizer alloc]initWithTarget:self action: @selector(panView:)];
    [self addGestureRecognizer:recog];
}

- (void) panView: (UIPanGestureRecognizer *)sender{
    CGPoint translation = [sender translationInView:self];
    CGRect rect = [self bounds];
//    rect.origin.x += translation.x;
    rect.origin.y -= translation.y*0.2;
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:
            NSLog(@"begin");
            break;
            
        case UIGestureRecognizerStateChanged:
            NSLog(@"change");
            
            break;
            
        case UIGestureRecognizerStateEnded:
            NSLog(@"end");
            [sender setTranslation:CGPointZero inView:self];
            [self setBounds:rect];
            break;
            
        default:
            break;
    }
    [self setBounds:rect];
    NSLog(@"%f", self.contentSize);
}

- (void) addSubview:(UIView *)view{
    [super addSubview:view];
    CGFloat distanceX = (view.frame.origin.x + view.frame.size.width/2);
    CGFloat distanceY = (view.frame.origin.y + view.frame.size.height/2);
    if(distanceX > self.contentSize.width){
        CGFloat difference = distanceX - self.contentSize.width;
        CGFloat newWidth = self.contentSize.width + difference;
        self.contentSize = CGSizeMake(newWidth, self.contentSize.height);
    }
    if(distanceY > self.contentSize.height){
        CGFloat difference = distanceY - self.contentSize.height;
        CGFloat newHeight = self.contentSize.height + difference;
        self.contentSize = CGSizeMake(self.contentSize.width, newHeight);
    }
}

@end
