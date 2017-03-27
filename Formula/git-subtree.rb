class GitSubtree < Formula
	desc "Updated git-subtree that includes a '--no-commit' option (to allow use while upstream patch is being processed)"
	homepage "https://github.com/MPLew-is/git"
	head "https://github.com/MPLew-is/git.git"
	
	bottle :unneeded
	
	def install
		bin.install "contrib/subtree/git-subtree.sh" => "git-subtree"
	end
end
