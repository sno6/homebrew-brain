# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Brain < Formula
  desc "Beautiful notes in your terminal."
  homepage "https://github.com/sno6/brain"
  sha256 "6140e07ae5dcf370e2dc1d41596edf100c2122b4ddc30567b79e35421abad7c6"
  license ""

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-arm64"
    else
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-amd64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-linux-arm64"
    else
      url "https://github.com/sno6/brain/releases/download/v0.0.3/brain-linux-amd64"
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
