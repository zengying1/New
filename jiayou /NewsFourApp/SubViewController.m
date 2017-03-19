#import "SubViewController.h"
#import "DetailViewController.h"
@interface SubViewController ()
{
    UILabel *signalLabel;
    UISegmentedControl *selectTypeSegment;
}

@end

@implementation SubViewController

- (id)initWithFrame:(CGRect)frame andSignal:(NSString *)szSignal
{
    self = [super init];
    if (self)
    {
        self.szSignal = szSignal;
        self.view.frame = frame;
        self.title = szSignal;
        [self.view setBackgroundColor:[UIColor whiteColor]];
        self.view.layer.borderWidth = 1;
        self.view.layer.borderColor = [UIColor blueColor].CGColor;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *backbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backbtn setFrame:CGRectMake(20, 40, 60, 30)];
    [backbtn setTitle:@"返回" forState:UIControlStateNormal];
    [backbtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [backbtn setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    backbtn.layer.borderWidth = 1;
    backbtn.layer.borderColor = [UIColor blueColor].CGColor;
    backbtn.layer.masksToBounds = YES;
    backbtn.layer.cornerRadius = 6;
    [backbtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backbtn];
    
    signalLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 160, 90)];
    signalLabel.text = _szSignal;
    signalLabel.textAlignment = NSTextAlignmentCenter;
    signalLabel.contentMode = UIViewContentModeScaleAspectFill;
    [signalLabel setBackgroundColor:[UIColor clearColor]];
    [signalLabel setTextColor:[UIColor blackColor]];
    [signalLabel setFont:[UIFont systemFontOfSize:20]];
    signalLabel.center = self.view.center;
    signalLabel.userInteractionEnabled = YES;
    signalLabel.layer.borderWidth = 1;
    signalLabel.layer.borderColor = [UIColor blueColor].CGColor;
    [self.view addSubview:signalLabel];
    
    UITapGestureRecognizer *singleTapRecognizer = [[UITapGestureRecognizer alloc] init];
    singleTapRecognizer.numberOfTapsRequired = 1;
    [singleTapRecognizer addTarget:self action:@selector(pust2View:)];
    [signalLabel addGestureRecognizer:singleTapRecognizer];
}

- (void)setSzSignal:(NSString *)szSignal
{
    _szSignal = szSignal;
    signalLabel.text = szSignal;
}

- (void)backAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pust2View:(id)sender
{
    DetailViewController *detailViewController = [DetailViewController alloc];
//    NSArray *ar = [self.szSignal componentsSeparatedByString:@"--"];
//    subViewController.szSignal = [NSString stringWithFormat:@"添加显示内容"];
    
    [[QHSliderViewController sharedSliderController].navigationController pushViewController:detailViewController animated:NO];
}

@end
