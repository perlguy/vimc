if exists("b:current_syntax")
    finish
endif

fun! <sid>hi(group)
    exec "syn keyword vimc" . a:group . " " . a:group
    exec "hi def link vimc" . a:group . " " . a:group
endfunction

let Groups = [ "Normal","NonText","Ignore","Cursor","CursorLine","CursorColumn","LineNr","VertSplit","StatusLine","StatusLineNC","Folded","Title","Visual","SpecialKey","Question","MoreMsg","WildMenu","Pmenu","PmenuSbar","PmenuSel","ErrorMsg","WarningMsg","ModeMsg","TabLine","TabLineFill","TabLineSel","MatchParen","Search","Comment","Constant","String","Character","Boolean","Number","Float","Identifier","Function","Statement","Conditional","Repeat","Label","Operator","Keyword","Exception","Type","StorageClass","Structure","Typedef","PreProc","Include","Define","Macro","PreCondit","Special","SpecialChar","Tag","Delimiter","SpecialComment","Debug","Error","Underlined","Todo" ]
for Group in Groups
    call <sid>hi(Group)
endfor

let b:current_syntax = "vimc"
