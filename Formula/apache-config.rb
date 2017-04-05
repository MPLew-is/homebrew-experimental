class ApacheConfig < Formula
	desc "Script for managing Apache configuration like a2enmod and related scripts on Debian"
	homepage "https://github.com/MPLew-is/apache-config"
	url "https://github.com/MPLew-is/apache-config/archive/v0.1.4.tar.gz"
	sha256 "eaf129d0611a1b86a6b795e9883978183585a780c14b88f399474b45a503dc46"
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
