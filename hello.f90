program hello
implicit none

    character(len=20)::name
    integer::day
     integer :: temp, humidity, aqi
    character(len=20) :: health_comment
    Print *, "Welcome to your Weather Quality checker, Where I will help you understand the circumstances of Thuwal weather to"// &
        "know if it's healthy or not!"
    Print *,"What is your name?"
    read *,name
    Print *,"Welcome ", name,"! can't wait to help you ! Please enter the date you want the weather on. (P.S, it should be "// &
         "from this month(October)!):"
 
 do
        read *, day

        if (day >= 1 .and. day <= 31) then
            print *, "Thank you for inserting a correct date! You chose the day October", day
            print *, "Now here is the data for that day:"
            if (day==1) then 
            temp=36
            humidity=
        else
            print *, "Invalid day of the month. Please try again (1-31)."
        end if
    end do

end program hello