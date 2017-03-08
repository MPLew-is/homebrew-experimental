class ApacheConfig < Formula
	desc "Script for managing Apache configuration like a2enmod and related scripts on Debian"
	homepage "https://github.com/MPLew-is/apache-config"
	url "https://github.com/MPLew-is/apache-config/archive/v0.1.0.tar.gz"
	sha256 "cb66fecd3986a935b0169dc326615b7d475d1fe4da14542ca912e30b59b978e7"
	head "https://github.com/MPLewis/apache-config.git"
	
	bottle :unneeded
	
	def install
		bin.install "apache-config.sh" => "apache-config"
	end
end
