wheel unpack ${PKG_NAME}-${PKG_VERSION}-py3-none-any.whl
git apply ${RECIPE_DIR}/0001-remove-unused-dependency.patch
wheel pack ${PKG_NAME}-${PKG_VERSION}
$PYTHON -m pip install -vv ${PKG_NAME}-${PKG_VERSION}-py3-none-any.whl