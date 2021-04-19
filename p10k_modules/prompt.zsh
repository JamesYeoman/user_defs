# Add an empty line before each prompt.
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Connect left prompt lines with these symbols. You'll probably want to use the same color
# as POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_FOREGROUND below.
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="${PROMPT_CONNECTOR}╭─"
typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX="${PROMPT_CONNECTOR}├─"
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="${PROMPT_CONNECTOR}╰─"
# Connect right prompt lines with these symbols.
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX="${PROMPT_CONNECTOR}─╮"
typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFFIX="${PROMPT_CONNECTOR}─┤"
typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX="${PROMPT_CONNECTOR}─╯"

# Filler between left and right prompt on the first prompt line. You can set it to ' ', '·' or
# '─'. The last two make it easier to see the alignment between left and right prompt and to
# separate prompt from command output. You might want to set POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
# for more compact prompt if using using this option.
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR='─'
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_BACKGROUND=
typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_GAP_BACKGROUND=
if [[ $POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR != ' ' ]]; then
# The color of the filler. You'll probably want to match the color of POWERLEVEL9K_MULTILINE
# ornaments defined above.
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_FOREGROUND=244
# Start filler from the edge of the screen if there are no left segments on the first line.
typeset -g POWERLEVEL9K_EMPTY_LINE_LEFT_PROMPT_FIRST_SEGMENT_END_SYMBOL='%{%}'
# End filler on the edge of the screen if there are no right segments on the first line.
typeset -g POWERLEVEL9K_EMPTY_LINE_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL='%{%}'
fi

# Separator between same-color segments on the left.
typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$SEPER_L
# Separator between same-color segments on the right.
typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$SEPER_R
# Separator between different-color segments on the left.
typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$SEPER_L
# Separator between different-color segments on the right.
typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$SEPER_R
# The right end of left prompt.
typeset -g POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=$SEPER_L
# The left end of right prompt.
typeset -g POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL=$SEPER_R
# The left end of left prompt.
typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=$SEPER_R
# The right end of right prompt.
typeset -g POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL=$SEPER_L
# Left prompt terminator for lines without any segments.
typeset -g POWERLEVEL9K_EMPTY_LINE_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=