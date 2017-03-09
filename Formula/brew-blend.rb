class BrewBlend < Formula
	desc "Meta-formulae for homebrew"
	homepage "https://github.com/MPLew-is/homebrew-blend"
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
