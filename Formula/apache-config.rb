class ApacheConfig < Formula
	desc "Script for managing Apache configuration like a2enmod and related scripts on Debian"
	homepage "https://github.com/MPLew-is/apache-config"
	url "https://github.com/MPLew-is/apache-config/archive/v0.1.0.tar.gz"
	sha256 "8d087bd49594071bc07cb38ff10a53ce125d4d362065d0ead609acf00f987680"
	head "https://github.com/MPLewis/apache-config.git"
	
	bottle :unneeded
	
	option "with-httpd24", "Install Homebrew Apache 2.4 in place of the system Apache"
	option "with-httpd22", "Install Homebrew Apache 2.2 in place of the system Apache"
	
	depends_on "homebrew/apache/httpd24" if build.with? "httpd-24"
	depends_on "homebrew/apache/httpd22" if build.with? "httpd-22"
	
	def install
		bin.install "apache-config.sh" => "apache-config"
	end
end
