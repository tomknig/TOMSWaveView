TOMSWaveView
============

A siri like visualization of a single numeric input.

## Installation with CocoaPods

TOMSMorphingLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

#### Podfile

```ruby
platform :ios, '6.0'
pod "TOMSWaveView"
```

## Usage

Instantiate TOMSWaveView as you would do with an UIView.

```objective-c
TOMSWaveView *waveView = [[TOMSWaveView alloc] initWithFrame:CGRectMake(0, 42, aView.frame.size.width, 42)];
[aView addSubview:waveView];
```

Set the `dataSource` property of the `waveView` to an object, that adopts `TOMSWaveViewDataSource`.

```objective-c
@interface ... () <TOMSWaveViewDataSource>
```

Implement `-(float)valueForWaveView:(TOMSWaveView *)waveView` within that object.

```objective-c
#pragma mark - TOMSWaveViewDataSource

- (float)valueForWaveView:(id)waveView
{
    return 0; //return your constantly changing value here
}
```

## Customization

TOMSMorphingLabel provides the possibility to configure the look and feel.
The configureable properties are defined as follows:

<table>
  <caption>configureable properties</caption>
  <tr>
    <td><tt>animationDuration: CGFloat</tt></td>
    <td>Time that elapses between the setting of a new text value and the end of the morphing transition. Default: 0.37</td>
  </tr>
  <tr>
    <td><tt>characterAnimationOffset: CGFloat</tt></td>
    <td>Spatial propagation speed of the character shrink and alpha effect. Default: 0.25</td>
  </tr>
  <tr>
    <td><tt>characterShrinkFactor: CGFloat</tt></td>
    <td>Factor that the scale of a completely disappeared character is divided by. Default: 4</td>
  </tr>
  <tr>
    <td><tt>morphingEnabled: BOOL</tt></td>
    <td>Defines whether the morphing transition between text values is enabled. Default: YES</td>
  </tr>
</table>

## Changelog

#### 0.1.0
* initial version

## Contribution & Contributors

I'd love to see your ideas for improving this library!
The best way to contribute is by submitting a pull request or a [new Github issue](https://github.com/TomKnig/TOMSWaveView/issues/new). :octocat:

## Author

[Tom König](http://github.com/TomKnig) [@TomKnig](https://twitter.com/TomKnig)

## License

TOMSWaveView is available under the MIT license. See the LICENSE file for more info.