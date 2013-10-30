//
//  OWOuterSpaceTableViewController.m
//  Out of this World
//
//  Created by InTouch Administrator on 10/29/13.
//  Copyright (c) 2013 Ilbum Kwak. All rights reserved.
//

#import "OWOuterSpaceTableViewController.h"

@interface OWOuterSpaceTableViewController ()

@end

@implementation OWOuterSpaceTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.planets = [[NSMutableArray alloc] init];
    
    NSString *p1 = @"Mercury";
    NSString *p2 = @"Venus";
    NSString *p3 = @"Earth";
    NSString *p4 = @"Mars";
    NSString *p5 = @"Jupiter";
    NSString *p6 = @"Saturn";
    NSString *p7 = @"Uranus";
    NSString *p8 = @"Neptune";
    
    NSArray *pArray = [[NSArray alloc] initWithObjects:p1, p2, p3, p4, p5, p6, p7, p8, nil];
    
    //NSLog(@"%i",pArray.count);
    int pArrayCount = pArray.count;
    NSLog(@"%i",pArrayCount);
    
    for (int counter = 0; counter <= [pArray count] - 1; counter++) {
        [self.planets addObject:[pArray objectAtIndex:counter]];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.planets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    // Configure the cell...
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@",[self.planets objectAtIndex:indexPath.row]];
    
    return cell;
    
    /*
    if (indexPath.section == 0)
    {
        if (indexPath.row == 0)
        {
            cell.textLabel.textColor = [UIColor redColor];
        }
        if (indexPath.row == 1)
        {
            cell.textLabel.textColor = [UIColor redColor];
        }
    }
    if (indexPath.section == 1)
    {
        if (indexPath.row == 0)
        {
            cell.textLabel.textColor = [UIColor yellowColor];
            cell.contentView.backgroundColor = [UIColor blackColor];
            cell.textLabel.backgroundColor = [UIColor blackColor];
            cell.backgroundColor = [UIColor blackColor];
        }
        if (indexPath.row == 1)
        {
            cell.textLabel.textColor = [UIColor yellowColor];
            cell.contentView.backgroundColor = [UIColor blackColor];
            cell.textLabel.backgroundColor = [UIColor blackColor];
            cell.backgroundColor = [UIColor blackColor];
        }
    }
    
    for (int x = 0; x <= 1; x++)
    {
        if (indexPath.section == x)
        {
            for (int y = 0; y<=1; y++)
            {
                if (indexPath.row == y)
                {
                    cell.textLabel.text = [NSString stringWithFormat:@"Section: %i, Row: %i",x,y];
                }
            }
        }
    }
    */
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
