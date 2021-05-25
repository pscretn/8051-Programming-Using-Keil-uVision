$mod51
org 00h
mov r1,#00h
mov r2,#01h
mov dptr,#4300h
movx a, @dptr
l1:subb a,r2
jz l2
jc l3
inc r1
inc r2
inc r2
sjmp l1
l2:inc r1
mov r2,#00h
sjmp l4
l3:add a,r2
mov r2,a
l4:mov a,r1
inc dptr
movx @dptr,a
mov a,r2
inc dptr
movx @dptr,a
l:sjmp l
end
