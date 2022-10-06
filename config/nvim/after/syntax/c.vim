" Highlight all type of Gstreamer
syntax match cType "Gst\w*"
syntax keyword cType gboolean gchar gint8 gint16 gint64 guint8 guint16 guint64 gfloat gdouble

" Highlight all defined MACROS in routine
syntax match cCustomMacro "[A-Z]*[A-Z0-9_][A-Z0-9][A-Z0-9]*"  
syntax match cCustomMacro "[A-Z][A-Z0-9]("me=e-1
syntax match cCustomMacro "[A-Z][A-Z0-9_]*+("me=e-1
highlight def cCustomMacro guifg=#CACAFF gui=bold

syntax match cCustomNormal "[A-Z]*[A-Z0-9_][A-Z][a-z]\w*"															" SOMETHING_Wrong
syntax match cCustomNormal "[A-Z]*[A-Z0-9_][A-Z0-9]*[A-Z0-9_][A-Z][a-z]\w*"											" SOMETHING_WHEN_Wrong
syntax match cCustomNormal "[A-Z]*[A-Z0-9_][A-Z0-9]*[A-Z0-9_][A-Z0-9]*[A-Z0-9_][A-Z][a-z]\w*"						" SOMETHING_WHEN_REALLY_Wrong
syntax match cCustomNormal "[a-z]*[a-z0-9][A-Z0-9]*[A-Z0-9_]\w*"													" someTHING_
syntax match cCustomNormal "[a-z]_[A-Z0-9]*[A-Z0-9_]"																" g_SOMETHING_
syntax match cCustomNormal "[a-z]_[A-Z0-9]*[A-Z0-9_][A-Z0-9]*[A-Z0-9_]"												" g_SOMETHING_WRONG
syntax match cCustomNormal "[a-z]_[A-Z0-9]*[A-Z0-9_][A-Z0-9]*[A-Z0-9_][A-Z0-9]*[A-Z0-9_]"							" g_SOMETHING_WENT_WRONG
syntax match cCustomNormal "[A-Z]*[A-Z0-9_][A-Z0-9]*[A-Z0-9_][A-Z][a-z]\w*"											" 0THING_Wrong
highlight def link cCustomNormal Normal

" Highlight all function names
syntax match cCustomFunc /\w\+\s*(/me=e-1,he=e-1
highlight def link cCustomFunc Function

" Highlight all type defined names (*_t or u* or s*)
syntax match cType "\h\w*_t\w\@!"
syntax keyword cType u8 u16 u32 u64 s8 s16 s32 s64
syntax keyword cType __u8 __u16 __u32 __u64 __s8 __s16 __s32 __s64
syntax keyword cType struct

" Highlight number with customtype
syntax match cCustomNumber "[0-9]*[0-9]u"
" Highlight operator link with number
syntax keyword cCustomNumber == != . -> <= >= < > + - * / % & ^ ? :
highlight def link cCustomNumber Number

" Implement later
" Highlight word after -> or . for pointer with green
" syntax match cCustomPointer ".\w"
" highlight def cCustomPointer guifg=#649AEB
