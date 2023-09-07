#!/usr/bin/env bash
# my_text.sh

eval "$(shellspec - -c) exit 1"

Example 'SIMPLE INPUT FROM /TMP/file'
When call bash -c "cat /tmp/my_txt.txt | ./,shellspec_format.sh"
The line 1 of output should equal '#!/usr/bin/env bash'
The error should eq ''
The status should be success
End

Example 'SIMPLE INPUT FROM Data struct'
Data '#!/usr/bin/env bash'
When call bash -c './,shellspec_format.sh'
The line 1 of output should equal '#!/usr/bin/env bash'
The error should eq ''
The status should be success
End

Example 'SIMPLE INPUT FROM Data struct'
Data
#|#!/usr/bin/env bash
#|End'
End
When run ./,shellspec_format.sh
The line 1 of output should equal '#!/usr/bin/env bash'
The error should eq ''
The status should be success
End
