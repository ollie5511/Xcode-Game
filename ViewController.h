#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timerfornumberone;
    NSTimer *timeroneshow;
    NSTimer *timeronehide;
    NSTimer *timerfornumbertwo;
    NSTimer *timertwoshow;
    NSTimer *timertwohide;
    IBOutlet UIImageView *numberone;
    IBOutlet UIImageView *numbertwo;
    CGPoint pos;
    IBOutlet UILabel *coins;
}
@end
