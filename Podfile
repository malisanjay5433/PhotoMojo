# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'PhotoMojo' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for PhotoMojo
#  pod 'GooglePlaces'
#  pod 'GooglePlacePicker'
  pod 'GoogleMaps'
  post_install do |installer|
      installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['SWIFT_VERSION'] = '3.0'
          end
      end
  end

end

target 'Share' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Share
#  pod 'GooglePlaces'
#  pod 'GooglePlacePicker'
  pod 'GoogleMaps'
  post_install do |installer|
      installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['SWIFT_VERSION'] = '3.0'
          end
      end
  end

end
