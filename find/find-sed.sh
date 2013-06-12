#!/bin/bash

# use find and sed to change #!/bin/sh to #!/bin/bash

# escape / with \
# -type f only apply to regular files
# -name '*.sh' only apply to .sh files
# only change the first line 1s
find . -type f -name '*.sh' -exec sed -i '1s/\#!\/bin\/sh/\#!\/bin\/bash/' {} \;




