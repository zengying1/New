#import "TouchPropagatedScrollView.h"

@implementation TouchPropagatedScrollView

- (BOOL)touchesShouldCancelInContentView:(UIView *)view
{
	return YES;
}

@end
