require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'RNXMPP'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/MAIDEA/react-native-xmpp.git', :branch => 'master' }

  s.requires_arc        = true
  s.platform            = :ios, '8.0'
  
  
  s.dependency 'XMPPFramework'
  s.dependency 'React'
  s.preserve_paths      = 'package.json', 'index.js'
  s.source_files        = 'RNXMPP/XMPPFramework.h', 'RNXMPP/RNXMPPService.m', 'RNXMPP/RNXMPPService.h', 'RNXMPP/RNXMPPConstants.h', 'RNXMPP/RNXMPPConstants.m', 'RNXMPP/RNXMPP.h', 'RNXMPP/RNXMPP.m'
end
