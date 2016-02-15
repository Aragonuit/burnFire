//
//  ViewController.m
//  burnFire
//
//  Created by AragonUit on 2/15/16.
//  Copyright © 2016 AragonUit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    UIImageView* fire;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout =UIRectEdgeNone;
    [self burnFire];
}
-(void)burnFire
{
    NSMutableArray* images=[[NSMutableArray alloc]initWithCapacity:17];
    for (int i=1; i<=17; i++) {
        NSString* fileName;
        if (i<10) {
            fileName=[[NSString alloc]initWithFormat:@"campFire0%d.gif",i];
        }
        else
        {
            fileName=[[NSString alloc]initWithFormat:@"campFire%d.gif",i];
        }
        UIImage *image=[UIImage imageNamed:fileName];
        [images addObject:image];
    }
    fire = [[UIImageView alloc]initWithFrame:self.view.bounds];
    fire.animationImages = images;
    fire.animationDuration = 1;
    fire.animationRepeatCount=0;
    
    [self.view addSubview:fire];
    [fire startAnimating];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
