git init mono
cd mono
git remote add origin https://github.com/qmfrederik/mono
git config core.sparsecheckout true
echo mcs/class/System.Drawing/`nmcs/build/common/ | out-file -encoding ascii .git/info/sparse-checkout
git pull --depth=1 origin netcore/drawing
cd ..
