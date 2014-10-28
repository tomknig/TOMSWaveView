//
//  TOMSWaveViewDataSource.h
//  Pods
//
//  Created by Tom König on 28/10/14.
//
//

@class TOMSWaveView;

@protocol TOMSWaveViewDataSource <NSObject>

@required

- (float)valueForWaveView:(TOMSWaveView *)waveView;

@end
