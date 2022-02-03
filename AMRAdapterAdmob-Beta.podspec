Pod::Spec.new do |s|
  s.name             = 'AMRAdapterAdmob-Beta'
  s.version          = '8.13.0.3'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Admob adapter for AMR SDK.'
  s.description      = 'AMR Admob adapter allows publishers to mediate Admob banner, native, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-ADMOB.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'AMRAdapterAdmob/Libs/AMRAdapterAdmob.xcframework'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
  s.dependency 'Google-Mobile-Ads-SDK', '8.13.0.0'
end
