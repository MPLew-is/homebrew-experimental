class BrewBlend < Formula
	desc "Meta-formulae for homebrew"
	homepage "https://github.com/MPLew-is/homebrew-blend"
	url "https://github.com/MPLew-is/homebrew-blend/archive/v0.1.0.tar.gz"
	sha256 "52af4c6f0af4fb81fcf5bd8d2e6841af2ea149f4ac8a57ce5c77a96aea1f3c63"
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
