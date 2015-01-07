//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by JP Skowron on 1/6/15.
//  Copyright (c) 2015 JP Skowron. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITextField *)sender {
    EnterAdjectiveViewController *vc = segue.destinationViewController;
    vc.title = self.nameTextField.text;
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)nameSegue sender:(id)sender {

    NSString *blank = @"";
    if ([self.nameTextField.text isEqualToString: blank]) {
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
