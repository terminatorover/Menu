//
//  ViewController.m
//  DribbleInspired
//
//  Created by ROBERA GELETA on 1/17/15.
//  Copyright (c) 2015 ROBERA GELETA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *i1;
@property (weak, nonatomic) IBOutlet UIImageView *i2;
@property (weak, nonatomic) IBOutlet UIImageView *i3;
@property (weak, nonatomic) IBOutlet UIImageView *i4;
@property (weak, nonatomic) IBOutlet UIImageView *i5;
@property (weak, nonatomic) IBOutlet UIImageView *i6;

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
    self.i1.transform = CGAffineTransformMakeScale(0.001, 0.001);
    self.i2.transform = CGAffineTransformMakeScale(0.001, 0.001);
    self.i3.transform = CGAffineTransformMakeScale(0.001, 0.001);
    self.i4.transform = CGAffineTransformMakeScale(0.001, 0.001);
    self.i5.transform = CGAffineTransformMakeScale(0001, 0.001);
    self.i6.transform = CGAffineTransformMakeScale(0.001, 0.001);

}

- (IBAction)bottomTap:(id)sender
{
    
    CGFloat moveOut = .03;
    CGFloat delay = 0.03;
    if(!tapped)
    {
        //move out (damping .5
        [self moveOut:moveOut springVelocity:10 damping:.5 setdelay:delay];
    }
    else
    {
        //move in
        [self moveIn:moveOut springVelocity:10 damping:.5 setdelay:delay];
    }
    
    tapped = !tapped;
}



- (void)moveOut:(CGFloat)timing springVelocity:(CGFloat)inital damping:(CGFloat)damping setdelay:(CGFloat)delay
{
    [UIView animateWithDuration:timing
                          delay:delay
         usingSpringWithDamping:damping
          initialSpringVelocity:inital
                        options:0
                     animations:^{
                         self.i6.transform = CGAffineTransformIdentity;
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:timing
                                               delay:delay
                              usingSpringWithDamping:damping
                               initialSpringVelocity:inital
                                             options:0
                                          animations:^{
                                              self.i5.transform = CGAffineTransformIdentity;
                                          } completion:^(BOOL finished) {
                                              [UIView animateWithDuration:timing
                                                                    delay:delay
                                                   usingSpringWithDamping:damping
                                                    initialSpringVelocity:inital
                                                                  options:0
                                                               animations:^{
                                                                   self.i4.transform = CGAffineTransformIdentity;
                                                               } completion:^(BOOL finished) {
                                                                   [UIView animateWithDuration:timing
                                                                                         delay:delay
                                                                        usingSpringWithDamping:damping
                                                                         initialSpringVelocity:inital
                                                                                       options:0
                                                                                    animations:^{
                                                                                        self.i3.transform = CGAffineTransformIdentity;
                                                                                    } completion:^(BOOL finished) {
                                                                                        [UIView animateWithDuration:timing
                                                                                                              delay:delay
                                                                                             usingSpringWithDamping:damping
                                                                                              initialSpringVelocity:inital
                                                                                                            options:0
                                                                                                         animations:^{
                                                                                                             self.i2.transform = CGAffineTransformIdentity;
                                                                                                         } completion:^(BOOL finished) {
                                                                                                             [UIView animateWithDuration:timing
                                                                                                                                   delay:delay
                                                                                                                  usingSpringWithDamping:damping
                                                                                                                   initialSpringVelocity:inital
                                                                                                                                 options:0
                                                                                                                              animations:^{
                                                                                                                                  self.i1.transform = CGAffineTransformIdentity;
                                                                                                                              } completion:^(BOOL finished) {
                                                                                                                                  
                                                                                                                                  
                                                                                                                              }];
                                                                                                             
                                                                                                         }];
                                                                                        
                                                                                    }];
                                                                   
                                                               }];
                                              
                                          }];
                         
                     }];
    
}

- (void)moveIn:(CGFloat)timing springVelocity:(CGFloat)inital damping:(CGFloat)damping setdelay:(CGFloat)delay
{
    [UIView animateWithDuration:timing
                          delay:delay
         usingSpringWithDamping:damping
          initialSpringVelocity:inital
                        options:0
                     animations:^{
                         self.i1.transform = CGAffineTransformMakeScale(0.001, 0.001);
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:timing
                                               delay:delay
                              usingSpringWithDamping:damping
                               initialSpringVelocity:inital
                                             options:0
                                          animations:^{
                                              self.i2.transform = CGAffineTransformMakeScale(0.001, 0.001);
                                          } completion:^(BOOL finished) {
                                              [UIView animateWithDuration:timing
                                                                    delay:delay
                                                   usingSpringWithDamping:damping
                                                    initialSpringVelocity:inital
                                                                  options:0
                                                               animations:^{
                                                                   self.i3.transform = CGAffineTransformMakeScale(0.001, 0.001);
                                                               } completion:^(BOOL finished) {
                                                                   [UIView animateWithDuration:timing
                                                                                         delay:delay
                                                                        usingSpringWithDamping:damping
                                                                         initialSpringVelocity:inital
                                                                                       options:0
                                                                                    animations:^{
                                                                                        self.i4.transform = CGAffineTransformMakeScale(0.001, 0.001);
                                                                                    } completion:^(BOOL finished) {
                                                                                        [UIView animateWithDuration:timing
                                                                                                              delay:delay
                                                                                             usingSpringWithDamping:damping
                                                                                              initialSpringVelocity:inital
                                                                                                            options:0
                                                                                                         animations:^{
                                                                                                             self.i5.transform = CGAffineTransformMakeScale(0.001, 0.001);
                                                                                                         } completion:^(BOOL finished) {
                                                                                                             [UIView animateWithDuration:timing
                                                                                                                                   delay:delay
                                                                                                                  usingSpringWithDamping:damping
                                                                                                                   initialSpringVelocity:inital
                                                                                                                                 options:0
                                                                                                                              animations:^{
                                                                                                                                  self.i6.transform = CGAffineTransformMakeScale(0.001, 0.001);
                                                                                                                              } completion:^(BOOL finished) {
                                                                                                                                  
                                                                                                                                  
                                                                                                                              }];
                                                                                                             
                                                                                                         }];
                                                                                        
                                                                                    }];
                                                                   
                                                               }];
                                              
                                          }];
                         
                     }];
}






@end
