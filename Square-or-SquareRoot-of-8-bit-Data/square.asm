$mod51
org 00h
mov dptr,#4300h
movx a,@dptr
mov b,a
mov dptr,#4300h
movx a,@dptr
mul ab
inc dptr
movx @dptr,a
mov a,b
inc dptr
movx @dptr,a
l1:sjmp l1
end
