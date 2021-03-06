require 'formula'

class Libdvdread <Formula
	url 'http://www.dtek.chalmers.se/groups/dvd/dist/libdvdread-0.9.7.tar.gz'
	homepage 'http://www.dtek.chalmers.se/groups/dvd/'
	md5 '078788c9241ae16763529e1235502337'

	depends_on 'libdvdcss' => :optional

	def install
		system "./configure", "--disable-debug", "--disable-dependency-tracking",
			   "--prefix=#{prefix}", "--mandir=#{man}", "--with-libdvdcss"
		system "make install"
	end
end
