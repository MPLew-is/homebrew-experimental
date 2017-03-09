class ApacheConfig < Formula
	desc "Script for managing Apache configuration like a2enmod and related scripts on Debian"
	homepage "https://github.com/MPLew-is/apache-config"
	url "https://github.com/MPLew-is/apache-config/archive/v0.1.3.tar.gz"
	sha256 "e115803d40018b20630191753d1bbbb78af684c2e1841052dcf5b9bc1760388b"
	head "https://github.com/MPLew-is/apache-config.git"
	
	bottle :unneeded
	
	option "with-httpd24", "Install Homebrew Apache 2.4 in place of the system Apache"
	option "with-httpd22", "Install Homebrew Apache 2.2 in place of the system Apache"
	
	depends_on "homebrew/apache/httpd24" if build.with? "httpd-24"
	depends_on "homebrew/apache/httpd22" if build.with? "httpd-22"
	
	def install
		bin.install "apache-config.sh" => "apache-config"
	end
	
	def caveats; <<-EOS.undent
		To finish installation, please run:
			apache-config install
			
		If you run into errors, please make sure you have Apache installed and that it is in PATH (as in, `which httpd` returns a valid path)
		
		EOS
	end
end
