//
//  MainViewController.h
//  Actividad
//
//  Created by Sipre on 25/03/13.
//  Copyright (c) 2013 Sipre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myCell.h"

@interface MainViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *TableViewMain;

@property (strong, nonatomic) NSMutableArray *data;
@property (strong, nonatomic) NSMutableArray *images;
@property (strong, nonatomic) NSMutableArray *imagesPPl;

@property (strong, nonatomic) NSMutableArray *cells;

@end
