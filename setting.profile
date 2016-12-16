DEPS_LOCATION=$HOME
export LD_LIBRARY_PATH=${DEPS_LOCATION}/local/lib:
export PATH=$PATH:${DEPS_LOCATION}/local/bin
export PKG_CONFIG_PATH=${DEPS_LOCATION}/local/lib/pkgconfig/:${DEPS_LOCATION}/local/lib/pkg-config/