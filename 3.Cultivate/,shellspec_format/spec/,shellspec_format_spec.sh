#!/usr/bin/env bash
# ,shellspec_format_spec.sh

eval "$(shellspec - -c) exit 1"


Example 'SIMPLE INPUT FROM Data struct'
    Data '#!/usr/bin/env bash'
    When call bash -c 'xclip ; ./,shellspec_format.sh; xclip -o; pkill -f xclip'
        The line 1 of output should equal '#!/usr/bin/env bash'
        The error should eq ''
        The status should be success
End

Example 'SIMPLE INPUT FROM Data struct'
    Data
    #|#!/usr/bin/env bash
    #|End'
    End
    When call bash -c 'xclip ; ./,shellspec_format.sh; xclip -o; pkill -f xclip'
        The line 1 of output should equal '#!/usr/bin/env bash'
        The error should eq ''
        The status should be success
End

Before 'xclip -i ./my_text.sh'

Example 'SIMPLE INPUT FROM /TMP/file'
    When call bash -c './,shellspec_format.sh; xclip -o; pkill -f xclip'
        The line 1 of output should equal '#!/usr/bin/env bash'
        The error should eq ''
        The status should be success
End