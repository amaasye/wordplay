//
//  ResultsViewController.m
//  WordPlay
//
//  Created by JP Skowron on 1/6/15.
//  Copyright (c) 2015 JP Skowron. All rights reserved.
//

#import "ResultsViewController.h"


@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;


@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *story = [NSString stringWithFormat:@"One day, %@ was taking a bath with a %@ duck", self.name, self.title];
    self.resultsTextView.text = story;
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
