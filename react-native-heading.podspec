require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = "Get device heading information on iOS or Android"
  s.homepage     = "https://github.com/react-native-maps/react-native-maps#readme"
  s.license      = package["license"]
  s.authors      = package["author"]
  s.platforms    = { :ios => "9.0" }

  s.source       = { :git => "https://github.com/tiempham/react-native-heading", :tag => "v#{s.version}" }
  s.source_files = "*.{h,m}"


  s.dependency "React"
end
