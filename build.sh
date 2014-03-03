projectroot="$(pwd)"

mkdir -p static/{css,js}

cat src/js/*.js >static/js/gitit.js
cat src/css/*.css >static/css/gitit.css

minify="$projectroot/node_modules/minify/bin/minify"
[ ! -f $minify ] && npm i minify

cd static/js
$minify gitit.js gitit.min.js || exit 1
cd ../css
$minify gitit.css gitit.min.css || exit 1
