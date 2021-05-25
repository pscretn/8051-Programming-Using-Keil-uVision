$mod51
org 00h
mov dptr, #4300h
mov r2,#09h
mov r0,#00h
mov r7,#50h
mov r3,#70h
loop1:mov dpl,r0
movx a,@dptr
mov r1,a
mov dpl,r7
movx a,@dptr
add a,r1
mov dpl,r3
movx @dptr,a
inc r3
inc r7
inc r0
djnz r2,loop1
loop2:sjmp loop2
end
