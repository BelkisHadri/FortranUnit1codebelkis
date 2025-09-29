program hello
implicit none

    character(len=20)::name
    integer::day
     integer :: temp, humidity, aqi
    character(len=20) :: health
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
            print *, "Let's start with your calculation!"
            exit   
        else
            print *, "Invalid day of the month. Please try again (1-31)."
        end if
       if (day == 1) then
        temp = 36
        humidity = 55
        aqi = 95
        health = "Moderate"
        end if
    end do


 

end program hello