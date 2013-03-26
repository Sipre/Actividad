//
//  ViewController.h
//  Actividad
//
//  Created by Sipre on 25/03/13.
//  Copyright (c) 2013 Sipre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *password;
- (IBAction)iniciarSesion:(id)sender;
@end
