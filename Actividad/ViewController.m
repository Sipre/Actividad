//
//  ViewController.m
//  Actividad
//
//  Created by Sipre on 25/03/13.
//  Copyright (c) 2013 Sipre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize username, password;

- (void)viewDidLoad
{	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    password.secureTextEntry = YES;
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"fondo2.jpeg"]]];

}



- (IBAction)iniciarSesion:(id)sender {
        if ([username.text isEqualToString:@"sipre"] && [password.text isEqualToString:@"samir"]) {
            
            MainViewController *MainScreen = [self.storyboard instantiateViewControllerWithIdentifier:@"MainScreen"];
            [self presentViewController:MainScreen animated:YES completion:nil];
            
            /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome"
                                                            message:[NSString stringWithFormat:@"Hello %@", username.text]
                                                           delegate:self
                                                  cancelButtonTitle:@"continue"
                                                  otherButtonTitles:nil, nil];
            
            //Set user defaults
            [[NSUserDefaults standardUserDefaults] setObject:username.text forKey:@"username"];
            [[NSUserDefaults standardUserDefaults] setObject:password.text forKey:@"password"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
            NSLog(@"username: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"username"]);
            NSLog(@"password: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"password"]);
            
            [alert show];*/
            
        } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Incorrect User or Password" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil, nil];
            [alert show];
        }
}
    


- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touches began");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

#pragma mark - Custom Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField==username) {
        [password becomeFirstResponder];
    } else if (textField == password) {
        [password resignFirstResponder];
        [self iniciarSesion:nil];
        
    }
    return YES;
}

@end
