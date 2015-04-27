//
//  TOMSViewController.m
//  Example
//
//  Created by Tom König on 28/10/14.
//  Copyright (c) 2014 tomknig. All rights reserved.
//

#import "TOMSViewController.h"
#import "TOMSWaveView.h"

@interface TOMSViewController () <TOMSWaveViewDataSource>
@property (weak, nonatomic) IBOutlet TOMSWaveView *waveView;
@end

@implementation TOMSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.waveView.backgroundColor = [UIColor whiteColor];
    self.waveView.waveColor = [UIColor blackColor];
    self.waveView.dataSource = self;
}

#pragma mark - TOMSWaveViewDataSource

- (float)valueForWaveView:(TOMSWaveView *)waveView
{
    return 0;
}

@end
