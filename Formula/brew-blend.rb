class BrewBlend < Formula
	desc "Meta-formulae for homebrew"
	homepage "https://github.com/MPLew-is/homebrew-blend"
	url "https://github.com/MPLew-is/homebrew-blend/archive/v0.1.1-5-g308c4d9.tar.gz"
	sha256 "65cb0d83afe4d3ce6b8a8ae6aeff5b1dfe2965f6f0eb1920d00d009fe62c89ec"
	head "https://github.com/MPLew-is/homebrew-blend.git"
	
	bottle :unneeded
	
	depends_on "jq"
	
	def install
		bin.install "brew-blend.sh" => "brew-blend"
	end
	
	def caveats; <<-EOS.undent
		To finish installation, please run:
			brew blend install-self
		
		EOS
	end
end
