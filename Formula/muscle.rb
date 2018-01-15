class Muscle < Formula
  desc "Multiple sequence alignment program"
  homepage "https://www.drive5.com/muscle/"
  url "https://www.drive5.com/muscle/muscle_src_3.8.1551.tar.gz"
  sha256 "c70c552231cd3289f1bad51c9bd174804c18bb3adcf47f501afec7a68f9c482e"

  bottle do
    root_url "https://data.merenlab.org/homebrew-anvio"
    cellar :any_skip_relocation
    sha256 "7eb68b09743a4c501ed8870d69d9732f6c54de22bd3b8649dd726f4c7cd84c05" => :el_capitan
    sha256 "79b0c424f3f17b844c125cb5aef32a4192cd270467d4d77637ba3457ecfda06b" => :sierra
    sha256 "d555f82b3faf22a008af7613ce5d1a33a0170df31dc6187d1c8b011b6b2e7c43" => :high_sierra
  end

  def install
    # Fix build per Makefile instructions
    inreplace "Makefile", "-static", ""

    system "make"
    bin.install "muscle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muscle -version")
  end
end

