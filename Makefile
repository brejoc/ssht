NAME=ssht
VERSION:=$(shell git describe --tags `git rev-list --tags --max-count=1`)

.PHONY: all clean package_deb package_rpm prepare brewinstall

all: clean package_deb clean package_rpm

clean:
	rm -f ./ssht
	rm -f *.deb
	rm -f *.rpm

brewinstall:
	# only for brew
	chmod +x ssht
	cp ./ssht /usr/local/bin/.

prepare:
	chmod +x ssht

package_deb: prepare
	fpm -s dir \
	    -t deb \
	    -n $(NAME) \
	    -v $(VERSION) \
	    -a all \
	    --license MIT \
	    -m "Jochen Breuer <brejoc@gmail.com>" \
	    --url "https://github.com/brejoc/ssht" \
	    --deb-user root \
	    --deb-group root \
	    --prefix /usr/local/bin ssht

package_rpm: prepare
	fpm -s dir \
	    -t rpm \
	    -n $(NAME) \
	    -v $(VERSION) \
	    -a all \
	    --license MIT \
	    -m "Jochen Breuer <brejoc@gmail.com>" \
	    --url "https://github.com/brejoc/ssht" \
	    --rpm-user root \
	    --rpm-group root \
	    --prefix /usr/local/bin ssht
