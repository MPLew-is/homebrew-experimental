class Extender < Formula
  desc "Extend or override any utility's commands"
  homepage "https://github.com/MPLew-is/extender"
  url "https://github.com/MPLew-is/extender", :tag => "v0.1.3", :revision => "b83a9c1642c003442ecb0c364d5057cbef715fa2"
  head "https://github.com/MPLew-is/extender"

  bottle :unneeded

  def install
    inreplace "extender.sh" do |s|
      s.gsub! "/usr/local/etc/extender", etc/"extender"
    end

    (etc/"extender").mkdir unless (etc/"extender").exist?

    bin.install "extender.sh" => "extender"
  end
end
