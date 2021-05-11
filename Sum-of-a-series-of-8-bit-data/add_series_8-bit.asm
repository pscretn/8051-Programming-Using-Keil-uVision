$mod51
org 00h
mov r1,#0ah
mov r6, #00h
mov r7, #00h
mov dptr, #4300h
loop: movx a,@dptr
add a,r6
mov r6,a
mov a,r7
addc a,#00h
mov r7,a
inc dptr
djnz r1,loop
mov dptr,#4500h
mov a,r6
movx @dptr,a
inc dptr
mov a,r7
movx @dptr,a
here:sjmp here
end
