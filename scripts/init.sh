
set -e
repoRoot=$(pwd)
frontendApp=$repoRoot/svelte
neutralinoApp=$repoRoot/neutralino

cd $frontendApp
bun --bun install

cd $neutralinoApp
neu update
