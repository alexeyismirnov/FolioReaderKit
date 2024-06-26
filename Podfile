use_frameworks! :linkage => :static 
workspace 'FolioReaderKit.xcworkspace'

target 'FolioReaderKit' do
    project './FolioReaderKit.xcodeproj' 
    pod 'RealmSwift', '10.20.0'
    pod 'MenuItemKit', '3.1.3'
    pod 'AEXML', '4.3.3'
    pod 'FontBlaster', '4.1.0'
    pod 'ZFDragableModalTransition', '0.6'
    pod 'SSZipArchive', '2.1.1'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
     config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
    end
  end

end


