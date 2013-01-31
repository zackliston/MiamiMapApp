//
//  ViewController.m


#import "ViewController.h"
#import "Building.h"
#import "Buildings.h"
#import "MapViewController.h"

static NSString* const kCellIdentifier = @"UITableViewCell";

@interface ViewController ()

@property (nonatomic, strong) Buildings* buildings;
@property (nonatomic, strong) NSArray* buildingNames;

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        self.title = @"Buildings";
        self.buildings = [[Buildings alloc] init];
        self.buildingNames = [self.buildings orderedNames];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView data source methods

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    }
    
    cell.textLabel.text = [self.buildingNames objectAtIndex:[indexPath row]];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.buildings count];
}

#pragma mark - UITableView delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Get building info for the selected row
    NSString* buildingName = [self.buildingNames objectAtIndex:[indexPath row]];
    
    NSLog(@"Touched row %d for building %@", [indexPath row], buildingName);
    
    // Creating a new StackableViewController and pushing it onto the navigation controller
    MapViewController* mapViewController = [[MapViewController alloc] init];
    mapViewController.title = buildingName;
    
    Building *currentBuilding = [self.buildings buildingForName:buildingName];

    // Note that the currently displayed view controller (self) has a way to get the navigation controller that is presenting it (self.navigationController)
    // So, we get the navigation controller that is displaying this view controller and tell it to push the new view controller we just created.
    // Setting animated:YES causes the navigation controller to show the pushed view controller's view coming onto the screen from the right,
    // while this view controller's view is pushed off to the left.
    [self.navigationController pushViewController:mapViewController animated:YES];
    
    [mapViewController showBuilding:currentBuilding];

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}





















@end
