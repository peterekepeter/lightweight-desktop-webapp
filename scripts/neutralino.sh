# assumes static development port

set -e
repoRoot=$(pwd)
neutralinoApp=$repoRoot/neutralino
port=5173

cd $neutralinoApp 

# this way the frontend development server is used from within neutrino app
neu run --frontend-lib-dev