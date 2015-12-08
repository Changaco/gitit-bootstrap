set -e

projectroot="$(pwd)"

mkdir -p static/{css,js}

cat src/js/*.js >static/js/gitit.js
cat src/css/*.css >static/css/gitit.css

# Clean up old version
[ -f "$projectroot/node_modules/minify/bin/minify" ] && rm -rf node_modules

minify="$projectroot/node_modules/minify/bin/minify.js"
if [ ! -f "$minify" ]; then
    if which npm &>/dev/null; then
        npm i minify
    else
        echo "npm not found"
    fi
    if [ ! -f "$minify" ]; then
        echo "styles and scripts won't be minified"
        minify="cat"
    fi
fi

cd static/js
$minify gitit.js >gitit.min.js
cd ../css
$minify gitit.css >gitit.min.css
