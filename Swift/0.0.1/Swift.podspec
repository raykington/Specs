#
#  Be sure to run `pod spec lint util.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "Swift"
s.version      = "0.0.1"
s.summary      = "A short description of util."

s.description  = <<-DESC
description
DESC

s.homepage     = "http://EXAMPLE/util"

s.license      = "MIT"
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }



s.author             = "wangjianglin"
# Or just: s.author    = "wangjianglin"
# s.authors            = { "wangjianglin" => "password" }
# s.social_media_url   = "http://twitter.com/wangjianglin"

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#

# s.platform     = :ios
s.platform     = :ios, "8.0"

#  When using multiple platforms
# s.ios.deployment_target = "5.0"
# s.osx.deployment_target = "10.7"
# s.watchos.deployment_target = "2.0"
# s.tvos.deployment_target = "9.0"


# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#

s.source       = { :git => "https://github.com/wangjianglin/swift.git", :tag => "0.0.1" }


# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#

#s.source_files  = "Classes", "util/**/*.{h,m}"
#s.exclude_files = "Classes/Exclude"

# s.public_header_files = "Classes/**/*.h"


s.subspec 'LinUtil' do |util|

	util.platform     = :ios, "8.0"
	util.name         = "LinUtil"
	util.version      = "0.0.1"
	util.summary      = "A short description of util."
	util.description  = <<-DESC
description
DESC
	util.homepage     = "http://EXAMPLE/util"

	#util.name          = 'LinUtil'
    util.source_files = 'util/util/*'
    #util.dependency 'ShareKit/Core'
    util.subspec 'SQLite' do |sqlite|
    	sqlite.source_files = 'util/util/SQLite/*'
    end
  end

end


Pod::Spec.new do |s|

s.name         = "LinClient"
s.version      = "0.0.1"
s.summary      = "A short description of util."

s.description  = <<-DESC
description
DESC

s.homepage     = "http://EXAMPLE/util"

s.license      = "MIT"
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }



s.author             = "wangjianglin"
# Or just: s.author    = "wangjianglin"
# s.authors            = { "wangjianglin" => "password" }
# s.social_media_url   = "http://twitter.com/wangjianglin"

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#

# s.platform     = :ios
s.platform     = :ios, "8.0"

#  When using multiple platforms
# s.ios.deployment_target = "5.0"
# s.osx.deployment_target = "10.7"
# s.watchos.deployment_target = "2.0"
# s.tvos.deployment_target = "9.0"


# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#

s.source       = { :git => "https://github.com/wangjianglin/swift.git", :tag => "0.0.1" }


# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#

#s.source_files  = "Classes", "util/**/*.{h,m}"
#s.exclude_files = "Classes/Exclude"

# s.public_header_files = "Classes/**/*.h"


s.subspec 'LinClient' do |client|

	

	#util.name          = 'LinUtil'
    util.source_files = 'client/client/**/*'
    #util.dependency 'ShareKit/Core'
    #util.subspec 'SQLite' do |sqlite|
    #	sqlite.source_files = 'util/util/SQLite/*'
    #end
  end

end




