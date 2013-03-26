//
//  MainViewController.m
//  Actividad
//
//  Created by Sipre on 25/03/13.
//  Copyright (c) 2013 Sipre. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize data, images, cells, TableViewMain, imagesPPl;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"si llego a pantalla Main");
    
    data = [[NSMutableArray alloc] init];
    [data addObject:@"Miguel Goonzalez"];
    [data addObject:@"Luis Delgado"];
    [data addObject:@"Fernando Fraga"];
    [data addObject:@"Samir Ipenza"];
    [data addObject:@"Carlos Estimado"];
    [data addObject:@"Eduardo Birrueta"];
    [data addObject:@"Hector Sanchez"];
    
    images = [[NSMutableArray alloc] init];
    [images addObject:@"MomoSTD.png"];
    [images addObject:@"WichoSTD.png"];
    [images addObject:@"FerniSTD.png"];
    [images addObject:@"SamirSTD.png"];
    [images addObject:@"EstimadoSTD.png"];
    [images addObject:@"BirruSTD.png"];
    [images addObject:@"HectorSTD.png"];
    
    imagesPPl = [[NSMutableArray alloc] init];
    [imagesPPl addObject:@"fondoA.jpeg"];
    [imagesPPl addObject:@"fondoB.jpeg"];
    [imagesPPl addObject:@"fondoC.jpeg"];
    [imagesPPl addObject:@"fondoD.jpeg"];
    [imagesPPl addObject:@"fondoE.jpeg"];
    [imagesPPl addObject:@"fondoF.jpeg"];
    [imagesPPl addObject:@"fondoG.jpeg"];
    
    myCell *cell = [TableViewMain dequeueReusableCellWithIdentifier:@"patternCell"];
    
    cells = [[NSMutableArray alloc] init];
    [cells addObject:cell];
    [cells addObject:cell];
    [cells addObject:cell];
    [cells addObject:cell];
    [cells addObject:cell];
    [cells addObject:cell];
    [cells addObject:cell];
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touches began Main Screen");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
     NSLog(@"si viene al return");
    [self.view endEditing:YES];
    
        
    //[TableViewMain beginUpdates];
    //[TableViewMain endUpdates];
    
    return YES;
}

#pragma mark - TableView Cell


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //////
   // myCell *cellActual = []
    
    /////
    
    myCell *cell = [tableView dequeueReusableCellWithIdentifier:@"patternCell"];
    
    cell.title.text = [data objectAtIndex:indexPath.row];
    cell.image.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:[imagesPPl objectAtIndex:indexPath.row]]];
    //CGRect frame = cell.text.frame;
    //frame.size.height = cell.text.contentSize.height;
    //cell.text.frame = frame;
    [cells replaceObjectAtIndex:indexPath.row withObject:cell];
   // NSLog(@"Entro en indice ... %d",(indexPath.row));
    //[cells addObject:cell]
    
    return cell;
  }

//Esta funcion se ejecuta cuando el usuario selecciona una celda de nuestra tableview
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"Entro A didSelectRow...");
    [tableView deselectRowAtIndexPath:indexPath animated:TRUE];
   

    [tableView beginUpdates];
    [tableView reloadData];
    [tableView endUpdates];
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;{
    NSLog(@"Entro A HeigthFor... %d",(indexPath.row));
    
    myCell *cell=[cells objectAtIndex:indexPath.row];
    
    CGRect frame = cell.text.frame;
    frame.size.height = cell.text.contentSize.height;
    cell.text.frame = frame;
    [cells replaceObjectAtIndex:indexPath.row withObject:cell];
    
    
    
    return frame.size.height+80;
}
//- (CGRect)textRectForBounds:(CGRect)bounds

//CGRect frame = _textView.frame;
//frame.size.height = _textView.contentSize.height;
//_textView.frame = frame;

@end
