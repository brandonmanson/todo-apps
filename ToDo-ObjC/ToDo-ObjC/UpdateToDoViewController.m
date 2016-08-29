//
//  UpdateToDoViewController.m
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "UpdateToDoViewController.h"

@interface UpdateToDoViewController ()
@property (strong, nonatomic) IBOutlet UITextField *toDoNameTextField;

@end

@implementation UpdateToDoViewController

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

- (IBAction)updateToDoButtonPressed:(UIButton *)sender {
    _toDo.name = _toDoNameTextField.text;
    [self.delegate updateToDo:_toDo atIndex:_indexPath];
}

@end
