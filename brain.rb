# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Brain < Formula
  desc "Beautiful notes in your terminal."
  homepage "https://github.com/sno6/brain"
  license ""

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-arm64"
      sha256 "530ae5ffb4edd0d1c5f231913e49e7b1bc6ef600bad960f6b54219a420251f62"
    else
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-amd64"
      sha256 "1c42f34f60f9a5059455e0c93f9e561b9894811d059af2acc3502afbc57ce045"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-linux-arm64"
      sha256 "859473c83ce2d1f1398fe175cd88b2346a23e029dc04bf8877fb88c375813d47"
    else
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-linux-amd64"
      sha256 "f8b17be2a83987b33909982d6d816af479da52d1e3b302865fa7b799d2e6c8aa"
    end
  end

  def install
    on_macos do
      if Hardware::CPU.arm?
        bin.install "brain-arm64" => "brain"
      else
    	  bin.install "brain-amd64" => "brain"
      end
    end

    on_linux do
      if Hardware::CPU.arm?
        bin.install "brain-linux-arm64" => "brain"
      else
        bin.install "brain-linux-amd64" => "brain"
      end
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test brain`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
