#import <Foundation/Foundation.h>

typedef enum {
    MLTransitionAnimationTypePush, //push
	MLTransitionAnimationTypePop, //pop
} MLTransitionAnimationType;

@interface MLTransitionAnimation : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) MLTransitionAnimationType type;

@end
