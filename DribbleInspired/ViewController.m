//
//  ViewController.m
//  DribbleInspired
//
//  Created by ROBERA GELETA on 1/17/15.
//  Copyright (c) 2015 ROBERA GELETA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
/**
 *  images
 */
@property (weak, nonatomic) IBOutlet UIImageView *i1;
@property (weak, nonatomic) IBOutlet UIImageView *i2;
@property (weak, nonatomic) IBOutlet UIImageView *i3;
@property (weak, nonatomic) IBOutlet UIImageView *i4;
@property (weak, nonatomic) IBOutlet UIImageView *i5;
@property (weak, nonatomic) IBOutlet UIImageView *i6;

/**
 *  labels
 */
@property (weak, nonatomic) IBOutlet UILabel *l1;
@property (weak, nonatomic) IBOutlet UILabel *l2;
@property (weak, nonatomic) IBOutlet UILabel *l3;
@property (weak, nonatomic) IBOutlet UILabel *l4;
@property (weak, nonatomic) IBOutlet UILabel *l5;
@property (weak, nonatomic) IBOutlet UILabel *l6;





//---->
@property (weak, nonatomic) IBOutlet UIImageView *ibottom;


@end

@implementation ViewController
{
    BOOL tapped;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self scaledDown];
    tapped = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scaledDown
{
    self.i1.transform = [self comboTransform];
    self.i2.transform = [self comboTransform];
    self.i3.transform = [self comboTransform];
    self.i4.transform = [self comboTransform];
    self.i5.transform = [self comboTransform];
    self.i6.transform = [self comboTransform];

    self.l1.transform = [self comboTransform];
    self.l2.transform = [self comboTransform];
    self.l3.transform = [self comboTransform];
    self.l4.transform = [self comboTransform];
    self.l5.transform = [self comboTransform];
    self.l6.transform = [self comboTransform];
    
}

- (IBAction)bottomTap:(id)sender
{
    
    CGFloat moveOut = .6;
    CGFloat delay = 0.0;
    if(!tapped)
    {
        //move out (damping .5
        [self moveOut:moveOut springVelocity:5 damping:.65 setdelay:delay];
    }
    else
    {
        //move in
        [self moveIn:moveOut springVelocity:0 damping:6 setdelay:delay];
    }
    
    tapped = !tapped;
}



- (void)moveOut:(CGFloat)timing springVelocity:(CGFloat)inital damping:(CGFloat)damping setdelay:(CGFloat)delay
{
    //---->
    [UIView animateWithDuration:timing
                          delay:0.23
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            CGAffineTransform rotate = CGAffineTransformMakeRotation(M_PI);
                            self.ibottom.transform = rotate;
                        } completion:^(BOOL finished) {
                            
                        }];
    
    //----->
    [UIView animateWithDuration:timing
                          delay:0.1
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{

                            self.l6.transform = CGAffineTransformIdentity;
                            self.i6.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    [UIView animateWithDuration:timing
                          delay:0.1 + (0.05* 1)
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.l5.transform = CGAffineTransformIdentity;
                            self.i5.transform = CGAffineTransformIdentity;
                        } completion:^(BOOL finished) {
                            
                        }];

    [UIView animateWithDuration:timing
                          delay:0.15
         usingSpringWithDamping:.6
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.l4.transform = CGAffineTransformIdentity;
                            self.i4.transform = CGAffineTransformIdentity;
                        } completion:^(BOOL finished) {
                            
                        }];
    [UIView animateWithDuration:timing
                          delay:0.17
         usingSpringWithDamping:.6
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.l3.transform = CGAffineTransformIdentity;
                            self.i3.transform = CGAffineTransformIdentity;
                        } completion:^(BOOL finished) {
                            
                        }];
    [UIView animateWithDuration:timing
                          delay:0.20
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.l2.transform = CGAffineTransformIdentity;
                            self.i2.transform = CGAffineTransformIdentity;
                        } completion:^(BOOL finished) {
                            
                        }];
    
    [UIView animateWithDuration:timing
                          delay:0.23
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.l1.transform = CGAffineTransformIdentity;
                            self.i1.transform = CGAffineTransformIdentity;
                        } completion:^(BOOL finished) {
                            
                        }];
    
//    [UIView animateWithDuration:timing
//                          delay:0.23
//         usingSpringWithDamping:damping
//          initialSpringVelocity:4
//                        options:0 animations:^{
//                            self.i1.transform = CGAffineTransformIdentity;
//                        } completion:^(BOOL finished) {
//                            
//                        }];
    



    
}

- (void)moveIn:(CGFloat)timing springVelocity:(CGFloat)inital damping:(CGFloat)damping setdelay:(CGFloat)delay
{
    //--->
    [UIView animateWithDuration:timing
                          delay:0.23
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.ibottom.transform = CGAffineTransformIdentity;
                        } completion:^(BOOL finished) {
                            
                        }];
    //------
    [UIView animateWithDuration:timing
                          delay:0.1
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.i1.transform = [self comboTransform];
                            self.l1.transform = CGAffineTransformMakeScale(0.001, 0.001);
                            self.i1.alpha = 0.0;
                        } completion:^(BOOL finished) {
                            
                        }];
    [UIView animateWithDuration:timing
                          delay:0.13
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.i2.transform = [self comboTransform];
                            self.l2.transform = CGAffineTransformMakeScale(0.001, 0.001);
                            self.i2.alpha = 0.0;
                        } completion:^(BOOL finished) {
                            
                        }];
    
    [UIView animateWithDuration:timing
                          delay:0.15
         usingSpringWithDamping:.6
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.i3.transform = [self comboTransform];
                            self.l3.transform = CGAffineTransformMakeScale(0.001, 0.001);
                            self.i3.alpha = 0.0;
                        } completion:^(BOOL finished) {
                            
                        }];
    [UIView animateWithDuration:timing
                          delay:0.17
         usingSpringWithDamping:.6
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.i4.transform = [self comboTransform];
                            self.l4.transform = CGAffineTransformMakeScale(0.001, 0.001);
                            self.i4.alpha = 0.0;
                        } completion:^(BOOL finished) {
                            
                        }];
    [UIView animateWithDuration:timing
                          delay:0.20
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.i5.transform = [self comboTransform];
                            self.l5.transform = CGAffineTransformMakeScale(0.001, 0.001);
                            self.i5.alpha =  0.0;
                        } completion:^(BOOL finished) {
                            
                        }];
    
    [UIView animateWithDuration:timing
                          delay:0.23
         usingSpringWithDamping:damping
          initialSpringVelocity:4
                        options:0 animations:^{
                            self.i6.transform = [self comboTransform];
                            self.l6.transform = CGAffineTransformMakeScale(0.001, 0.001);
                            self.i6.alpha = 0.0;
                        } completion:^(BOOL finished) {
                            [self unhide];
                        }];
    
   
 }

- (CGAffineTransform)comboTransform
{
    CGAffineTransform rotate = CGAffineTransformMakeRotation(M_PI);
    CGAffineTransform scale = CGAffineTransformMakeScale(0.001, 0.001);
    CGAffineTransform  combined = CGAffineTransformConcat(rotate, scale);
    return combined;
}


- (void)unhide
{
    self.i1.alpha = 1.0;
    self.i2.alpha = 1.0;
    self.i3.alpha = 1.0;
    self.i4.alpha = 1.0;
    self.i5.alpha = 1.0;
    self.i6.alpha = 1.0;
    
}




@end
