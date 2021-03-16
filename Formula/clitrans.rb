# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitrans < Formula
  desc "Yet another command-line translator (Chinese <=> English)"
  homepage "https://github.com/wfxr/clitrans"
  url "https://github.com/wfxr/clitrans/releases/download/v0.3.3/clitrans-v0.3.3-x86_64-apple-darwin.tar.gz"
  sha256 "80070fc0cc1a12208f5472b9d16c5560847909773301628a4a01cf8c810942ee"
  license "MIT/APACHE-2.0"
  version "0.3.3"

  def install
    bin.install "clitrans"
    zsh_completion.install  "completions/zsh/_clitrans"
    bash_completion.install "completions/bash/clitrans.bash"
    fish_completion.install "completions/fish/clitrans.fish"
  end
end

# vim: ft=ruby:
