require 'formula'

class S3cmd < Formula
  url 'http://downloads.sourceforge.net/project/s3tools/s3cmd/1.0.0/s3cmd-1.0.0.tar.gz'
  homepage 'http://s3tools.org/s3cmd'
  md5 'e82f0246479015ce50a09d8d4ada8429'

  def install
    libexec.install Dir['s3cmd', 'S3']
    man1.install 's3cmd.1'
    bin.mkpath
    ln_s libexec+'s3cmd', bin
  end
end
