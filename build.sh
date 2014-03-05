projectroot="$(pwd)"

mkdir -p static/{css,js}

cat src/js/*.js >static/js/gitit.js
cat src/css/*.css >static/css/gitit.css

minify="$projectroot/node_modules/minify/bin/minify"
if [ ! -f $minify ]; then
    if which npm &>/dev/null; then
        npm i minify
    else
        echo "npm not found, styles and scripts won't be minified";
        minify="cp"
    fi
fi

cd static/js
$minify gitit.js gitit.min.js || exit 1
cd ../css
$minify gitit.css gitit.min.css || exit 1
