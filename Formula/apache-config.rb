class ApacheConfig < Formula
	desc "Script for managing Apache configuration like a2enmod and related scripts on Debian"
	homepage "https://github.com/MPLew-is/apache-config"
	url "https://github.com/MPLew-is/apache-config/archive/v0.1.0.tar.gz"
	sha256 "8d087bd49594071bc07cb38ff10a53ce125d4d362065d0ead609acf00f987680"
	head "https://github.com/MPLewis/apache-config.git"
	
	bottle :unneeded
	
	def install
		bin.install "apache-config.sh" => "apache-config"
	end
end
