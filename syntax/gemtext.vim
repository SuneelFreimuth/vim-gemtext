if exists('b:current_syntax') && b:current_syntax == 'gemtext'
    finish
endif

syntax match Heading  /^#\{1,3}.\+$/
syntax match List     /^\* /
syntax match LinkURL  /^=>\s*\S\+/
syntax match Quote    /^>.\+/
syntax region Preformatted start=/^```/ end=/```/

highlight default link Heading  Special
highlight default link List     Statement
highlight default link LinkURL  Underlined
highlight default link Quote    Constant
highlight default link Preformatted Identifier

if !exists('b:current_syntax')
    let b:current_syntax = 'gemtext'
endif

