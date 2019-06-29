Pod::Spec.new do |s|
  s.name = 'testCocoaPods'
  s.version = '1.0.1'
  s.summary = '测试创建cocoaPods项目'
  s.homepage = 'https://github.com/TheRuningAnt/testCocoaPods.git'
  s.license = {:type=>"MIT",:file=>"LICENSE"}
  s.author = { 'zhaoguangliang' => '848278419@qq.com' }
  s.platform = :ios, "8.0"
  s.source = { :git => 'https://github.com/TheRuningAnt/testCocoaPods.git', :tag => 'v1.0.12' }
  s.source_files = "testCocoaPodsFile/*"
  s.requires_arc = true
end
