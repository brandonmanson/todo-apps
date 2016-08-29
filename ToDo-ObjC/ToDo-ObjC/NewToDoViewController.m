//
//  NewToDoViewController.m
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "NewToDoViewController.h"

@interface NewToDoViewController ()
@property (strong, nonatomic) IBOutlet UITextField *toDoNameTextField;

@end

@implementation NewToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)addToDoButtonPressed:(UIButton *)sender {
    _toDo = [[ToDo alloc] initWithName:_toDoNameTextField.text];
    [self.delegate addToDoAndRefresh:_toDo];
}

@end
