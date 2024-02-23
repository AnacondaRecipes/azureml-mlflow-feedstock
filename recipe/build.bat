wheel unpack %PKG_NAME%-%PKG_VERSION%-py3-none-any.whl
patch --binary -p1 .\%PKG_NAME%-%PKG_VERSION%\%PKG_NAME%-%PKG_VERSION%.dist-info/METADATA < %RECIPE_DIR%\0001-remove-unused-dependency.patch
wheel pack %PKG_NAME%-%PKG_VERSION%
%PYTHON% pip install -vv --no-deps --no-build-isolation %PKG_NAME%-%PKG_VERSION%-py3-none-any.whl