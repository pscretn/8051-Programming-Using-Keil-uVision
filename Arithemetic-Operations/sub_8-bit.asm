$mod51
org 00h
mov dptr,#4300h
movx a,@dptr
mov r1,a
inc dptr
movx a,@dptr
mov r0, #00h
subb a,r1
mov dptr,#4500h
movx @dptr,a
jnc l1
inc r0
l1:inc dptr
mov a,r0
movx @dptr,a
l2:sjmp l2
end
