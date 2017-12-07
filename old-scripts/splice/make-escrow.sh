#!/bin/bash
basedir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# splice-maven-parent
git clone git@github.com:splicemachine/splice-maven-parent.git

# derby
git clone git@github.com:splicemachine/derby.git

# spliceengine
git clone git@github.com:splicemachine/spliceengine.git

# asynchhbase
git clone git@github.com:splicemachine/asynchbase.git

# utilities
git clone git@github.com:splicemachine/utilities.git

# splice-maven-parent
cd ${basedir}/splice-maven-parent
git checkout 07c6dfa

# derby
cd ${basedir}/derby
git checkout c3dba3e

# spliceengine
cd ${basedir}/spliceengine
git checkout a20e8b1

# asynchhbase
cd ${basedir}/asynchbase
git checkout ccaaa50

# utilities
cd ${basedir}/utilities
git checkout 81d66f8


cd ${basedir}
find . -type d -name .git -exec rm -r '{}' \;

