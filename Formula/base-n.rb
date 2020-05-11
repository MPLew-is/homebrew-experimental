class BaseN < Formula
  desc "Convert between arbitrary bases"
  homepage "https://github.com/MPLew-is/base-n"
  url "https://github.com/MPLew-is/base-n", :tag => "v0.1.1", :revision => "70b2da82b4a4458c0d1dcd79dc1348fe87190743"
  head "https://github.com/MPLew-is/base-n"

  bottle :unneeded

  def install
        bin.install "base-n.sh" => "base-n"
        bin.install_symlink "base-n" => "base16To36"
        bin.install_symlink "base-n" => "base16To62"
  end
end
