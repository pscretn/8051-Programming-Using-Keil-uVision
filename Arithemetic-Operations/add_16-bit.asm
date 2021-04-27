$mod51
org 00h
mov r2,#00h
mov dptr,#4300h
movx a, @dptr
mov r0,a
mov dptr,#4302h
movx a,@dptr
add a,r0
mov dptr ,#4305h
movx @dptr,a
mov dptr ,#4301h
movx a,@dptr
mov r0,a
mov dptr,#4303h
movx a,@dptr
addc a,r0
mov dptr,#4306h
movx @dptr,a
jnc l2
inc r2
l2:mov dptr,#4307h
mov a,r2
movx @dptr,a
l3:sjmp l3
end
