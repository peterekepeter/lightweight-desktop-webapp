
set -e
repoRoot=$(pwd)
frontendApp=$repoRoot/svelte

cd $frontendApp
bun --bun install
bun --bun run dev
