prebuild:
	bash build_occt.sh
make: 
	cd build && make -j4
install: 
	cd build && make install -j4 > /dev/null
package: install 
	cd dist && tar -cf occt-7.1.0-${TRAVIS_OS_NAME}.tgz occt-7.1.0
.PHONY: prebuild make install package
