if exists('b:current_syntax')
    finish
endif

syn match TinyAplEscape /\v⍘./ contained
syn region TinyAplString matchgroup=TinyAplSyntax start=/"/ skip=/⍘"/ end=/"/ contains=TinyAplEscape
syn region TinyAplString matchgroup=TinyAplSyntax start=/'/ end=/'/

syn match TinyAplChar /\v[^']/ contained
syn match TinyAplQuoteChar /\v'.'/ contains=TinyAplChar

syn region TinyAplComment start=/⟃/ end=/⟄/

syn match TinyAplNumber /\v¯?%(\d+%(\.?\d+)?|∞)%(ᴊ¯?%(\d+%(\.?\d+)?|∞))?/

syn match TinyAplComment  /\v⍝.*$/
syn match TinyAplSyntax   /\v[\[\]()⟨⟩.:·‿←→↚↩⇇⊏⊐⋄⍘⍰⍠⏨■]/
syn match TinyAplBraces   /\v[{}⦃⦄⦅⦆⦋⦌_]/
syn match TinyAplIdent    /\v[ɛ∇⍞⍵⍶⍹⍺]|[∆⍙⎕]\w*/
syn match TinyAplArray    /\v[∻⍬]/
syn match TinyAplFunction /\v[-!*+,<=>?|~§×÷ϼ߹‥…ℑℜ↑↓↗↾⇂∊√∡∧∨∩∪≠≡≢≤≥⊂⊃⊆⊇⊕⊗⊢⊣⊤⊥⊲⊳⊴⊵⋵⋷⌈⌊⌷⌹⌽⌿⍉⍋⍎⍒⍕⍟⍪⍮⍱⍲⍳⍴⍷⍸⧺⨳⩓⩔⫇ⵧ⸠]/
syn match TinyAplAdverb   /\v[/\¨µ˝ᐵᑈᑒᑣᓗᓚ∵⊞⌓⌸⌺⍦⍨⑴◠◡⤺⥼⥽⫤]|_\w+/
syn match TinyAplConj     /\v[@«»⁖⇽⇾∘∙≈⊩⊸⍛⍜⍢⍣⍤⍥⍫⎊○⟜⫣⬚⸚]|_\w+_/

hi def link TinyAplComment   Comment       
hi def link TinyAplSyntax    Delimiter     
hi def link TinyAplBraces    Statement     
hi def link TinyAplIdent     Identifier    
hi def link TinyAplArray     Constant      
hi def link TinyAplFunction  Function      
hi def link TinyAplAdverb    Type          
hi def link TinyAplConj      Preproc       
hi def link TinyAplNumber    Number        
hi def link TinyAplString    String        
hi def link TinyAplQuoteChar Delimiter     
hi def link TinyAplChar      Special       
hi def link TinyAplEscape    Special       

let b:current_syntax='tinyapl'
