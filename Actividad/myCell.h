//
//  myCell.h
//  Actividad
//
//  Created by Sipre on 25/03/13.
//  Copyright (c) 2013 Sipre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *image;

@property (strong, nonatomic) IBOutlet UILabel *title;

@property (strong, nonatomic) IBOutlet UITextView *text;
@end
