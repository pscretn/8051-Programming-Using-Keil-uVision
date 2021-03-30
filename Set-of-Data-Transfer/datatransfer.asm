$mod51
org 00h
mov dptr,#4300h
mov r2,#0ah
mov r1,#50h
mov r0,#00h
loop:mov dpl,r0
movx a,@dptr
inc r0
mov dpl,r1
movx @dptr,a
inc r1
djnz r2,loop
l1:sjmp l1
end
