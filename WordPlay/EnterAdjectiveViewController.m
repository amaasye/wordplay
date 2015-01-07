//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by JP Skowron on 1/6/15.
//  Copyright (c) 2015 JP Skowron. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITextField *)sender {
    ResultsViewController *rvc = segue.destinationViewController;
    rvc.title = self.adjectiveTextField.text;
    rvc.name = self.title;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)adjectiveSegue sender:(id)sender {

    NSString *blank = @"";
    if ([self.adjectiveTextField.text isEqualToString: blank]) {
        NSLog(@"Bob");
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
