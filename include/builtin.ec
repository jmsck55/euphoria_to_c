-- builtin.ec, *.ec files contain embedded C code for EuToC.ex to include in its output.
-- Copyright (c) 2021 James Cook

-- CONSTRUCTION: Put Copyright statement here.

-- CONSTRUCTION: Put contact information here.

-- Begin code. See also: bin/EuToC.ex

#include <stdio.h>

include machine.e

public type Char(integer ch)
  -- unsigned char
  return ch <= 255 and ch >= 0
end type

public type String(sequence s)
  for i = 1 to length(s) do
    if not Char(s[i]) then
      return 0
    end if
  end for
  return 1
end type

procedure EuPutsScreen(String st)
  atom str
  str = allocate_string(replace_line_endings(st))
  void fputs(str, stdout);
  free(str)
end procedure

-- CONSTRUCTION: Put more code here.

--end of file.
