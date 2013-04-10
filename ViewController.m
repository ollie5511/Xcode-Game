#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int x = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
    timerfornumberone = [NSTimer scheduledTimerWithTimeInterval:(0.03)  target:self selector:@selector(onTimerforOne) userInfo:nil repeats:YES];
    
    pos = CGPointMake(5.0, 6.0);
    
    timeroneshow = [NSTimer scheduledTimerWithTimeInterval:(7.42) target:self selector:@selector(timeroneshow) userInfo:nil repeats:YES];
    
    timeronehide = [NSTimer scheduledTimerWithTimeInterval:(10.0) target:self selector:@selector(offTimerforOne) userInfo:nil repeats:YES];
    
    
    
    timerfornumbertwo = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:@selector(onTimerforTwo) userInfo:nil repeats:YES];
    
    timertwoshow = [NSTimer scheduledTimerWithTimeInterval:(7.42) target:self selector:@selector(timertwoshow) userInfo:nil repeats:YES];
    timertwohide = [NSTimer scheduledTimerWithTimeInterval:(10.0) target:self selector:@selector(offTimerforTwo) userInfo:nil repeats:YES];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onTimerforOne
{
    coins.text = [[NSString alloc] initWithFormat: @"%d", x];

    numberone.center = CGPointMake(numberone.center.x+pos.x, numberone.center.y+pos.y); //good
    if (numberone.center.x >360 || numberone.center.x<0)
        pos.x = -pos.y;
    
    if (numberone.center.y >480 || numberone.center.y<0)
        pos.y = -pos.x;
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self              action:@selector(imageTapped:)];
    numberone.userInteractionEnabled = YES;
    [numberone addGestureRecognizer:tap];
    [tap release];


}

-(void)onTimerforTwo
{
    coins.text = [[NSString alloc]initWithFormat:@"%d", x];
    
    numbertwo.center = CGPointMake(numbertwo.center.x+pos.x, numbertwo.center.y+pos.y);
    if (numbertwo.center.x >360 || numbertwo.center.x <0) {
        pos.y = -pos.x;
    if (numbertwo.center.y >480 || numbertwo.center.y <0)
        pos.y = -pos.x;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageTappedTwo:)];
        numbertwo.userInteractionEnabled = YES;
        [numbertwo addGestureRecognizer:tap];
        [tap release];

        
    }
}

- (void )imageTapped:(UITapGestureRecognizer *) gestureRecognizer
{
    x = x +50;
    numberone.hidden = TRUE;
}

-(void)imageTappedTwo:(UITapGestureRecognizer *) gestureRecognizer
{
    x = x +50;
    numbertwo.hidden = TRUE;
}

-(void)timeroneshow
{
    numberone.center = CGPointMake(340, 200);
    numberone.hidden = FALSE;
}

-(void)timertwoshow
{
    numbertwo.center = CGPointMake(200, 100);
    numbertwo.hidden = FALSE;
}

-(void)offTimerforOne
{
    numberone.hidden = TRUE;
}

-(void)offTimerforTwo
{
    numbertwo.hidden = TRUE;
}
@end
