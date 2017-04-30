//
//  ViewController.m
//  IndicatorDemo
//
//  Created by Shubham on 01/05/17.
//  Copyright © 2017 Shubham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
- (IBAction)startIndicator:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.indicator.hidden = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startIndicator:(id)sender {
    
    //self.indicator.hidden = false;
    [self.indicator startAnimating];
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(showIndicator) userInfo:nil repeats:NO];
}

-(void)showIndicator{

    [self.indicator stopAnimating];
}
@end
