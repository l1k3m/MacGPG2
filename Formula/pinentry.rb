  url 'https://github.com/GPGTools/pinentry-mac.git', :revision => 'origin/master'
	
	xconfig = "GCC_VERSION=com.apple.compilers.llvmgcc42 " +
			  "OTHER_LDFLAGS=\"#{ldflags} \"'$$'OTHER_LDFLAGS\" -L#{HOMEBREW_PREFIX}/lib\" "

      build_env = ARGV.build_env
	  
      xconfig += "SDKROOT=\"#{build_env}/SDKs/MacOSX10.5.sdk\" " +
				 "MACOSX_DEPLOYMENT_TARGET=10.5 "
    # Use xconfig to force using GGC_VERSION specified.
      s.gsub! "@xcodebuild", "@xcodebuild #{xconfig}"