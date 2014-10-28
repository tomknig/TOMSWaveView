Pod::Spec.new do |s|
  s.name             = "TOMSWaveView"
  s.version          = "0.1.0"
  s.summary          = "A siri like visualization of a single numeric input."
  s.homepage         = "https://github.com/TomKnig/TOMSWaveView"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "TomKnig" => "hi@tomknig.de" }
  s.source           = { :git => "https://github.com/TomKnig/TOMSWaveView.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/TomKnig'

  s.platform         = :ios, '6.0'
  s.requires_arc     = true

  s.source_files     = 'Classes/*.{h,m}'
end
