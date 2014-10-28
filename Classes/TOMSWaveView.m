//
//  TOMSWaveView.m
//  Pods
//
//  Created by Tom König on 28/10/14.
//
//

#import "TOMSWaveView.h"

@interface TOMSWaveView ()
@property (atomic, assign, getter=isAnimating) BOOL animating;

@property (nonatomic, strong) CADisplayLink *displayLink;
@property (nonatomic, assign) CFTimeInterval displayLinkDuration;
@end

@implementation TOMSWaveView

#pragma mark - Initialization

- (id)init
{
    self = [super init];
    
    if (self) {
        [self designatedInitialization];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self designatedInitialization];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frameRect
{
    self = [super initWithFrame:frameRect];
    
    if (self) {
        [self designatedInitialization];
    }
    
    return self;
}

- (void)designatedInitialization
{
    _displayLinkDuration = -1;
    _animating = YES;
    self.displayLink = [CADisplayLink displayLinkWithTarget:self
                                                   selector:@selector(tickInitial)];
    [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop]
                           forMode:NSRunLoopCommonModes];
}

#pragma mark - Ticking

- (void)tickInitial
{
    if (self.displayLinkDuration <= 0) {
        self.displayLink.paused = YES;
        CFTimeInterval duration = self.displayLink.duration;
        self.displayLink = [CADisplayLink displayLinkWithTarget:self
                                                       selector:@selector(tickAnimation)];
        [self.displayLink addToRunLoop:[NSRunLoop currentRunLoop]
                               forMode:NSRunLoopCommonModes];
        self.displayLink.paused = NO;
        self.displayLinkDuration = duration;
    }
}

- (void)tickAnimation
{
    @synchronized (self) {
        if (self.isAnimating) {
            [self applyCurrentValue];
        }
    }
}

- (void)applyCurrentValue
{
    if (self.dataSource) {
        UInt32 bufferSize = 1;
        float *buffer = malloc(bufferSize * sizeof(float));
        buffer[0] = [self.dataSource valueForWaveView:self];
        [self updateBuffer:buffer withBufferSize:bufferSize];
    }
}

@end
