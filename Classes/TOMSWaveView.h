//
//  TOMSWaveView.h
//  Pods
//
//  Created by Tom König on 28/10/14.
//
//

#import "ZLSinusWaveView.h"
#import "TOMSWaveViewDataSource.h"

@interface TOMSWaveView : ZLSinusWaveView

@property (nonatomic, assign) id<TOMSWaveViewDataSource> dataSource;

@end
