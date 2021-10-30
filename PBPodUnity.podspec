Pod::Spec.new do |s|
  s.name             = 'PBPodUnity'
  s.version          = '0.0.0.1'
  s.summary          = 'Photo Butler pod that contains support for playing and saving Unity-based Cinemini and Cinemajor Templates.'
  
  s.description      = <<-DESC
  Photo Butler pod that contains support for playing and saving Unity-based Cinemini and Cinemajor Templates. Contains the Unity as a Framework code as well as a wrapper class to make usage as simple as possible.
                       DESC

  s.homepage         = 'https://github.com/git/PBPodUnity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'git' => 'danspencer@photobutler.com' }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.2'

  s.platform = :ios, '10.0'
  
  s.framework = ['AudioToolbox', 'AVKit', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'CoreMotion', 'CoreText', 'CoreVideo', 'MediaToolbox', 'Metal', 'OpenAL', 'OpenGLES', 'SystemConfiguration', 'Security', 'UIKit', 'QuartzCore']
  
  s.dependency "SSZipArchive"

  s.library = 'iconv'
  s.source = { :http => 'https://p.pb.life/pod/0.0.0.1/PBVideoEngine_20211029.zip' }
  s.source_files = ['PBVideoEngine/Classes/PBVideoEngine.swift', 'PBVideoEngine/Classes/Core/PBVideoStoryDownloaderService.swift']
  s.vendored_frameworks = 'UnityFramework.framework'
  s.vendored_libraries = 'libs/*.{a}'

end
