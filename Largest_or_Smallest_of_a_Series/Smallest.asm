$mod51
org 00h
mov dptr ,#4300h
mov r0,#0ah
mov b,#0ffh
mov a,#00h
loop:movx a,@dptr
cjne a,b,l1
l1:jnc l2
mov b,a
l2:inc dptr
djnz r0,loop
mov a,b
mov dptr,#4500h
movx @dptr,a
l3:sjmp l3
end
