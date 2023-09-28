# run from repo root
# creates a release build for the project

set -e
repoRoot=$(pwd)
frontendApp=$repoRoot/svelte
neutralinoApp=$repoRoot/neutralino
htmlToPatch=$repoRoot/svelte/src/app.html

git checkout HEAD -- $htmlToPatch

rm -rf dist

cd $frontendApp
# bun run test -- --run
bun --bun run build

cd $neutralinoApp
rm -rf resources
mkdir resources
cp -r $frontendApp/.svelte-kit/output/client/* resources 
cp -r $frontendApp/.svelte-kit/output/prerendered/pages/* resources
neu build --release

mv $neutralinoApp/dist $repoRoot

echo build output avaiable at ./dist
