program hello
implicit none

    character(len=20)::name
    integer::day
    integer :: temp, humidity, aqi

    Print *, "Welcome to your Weather Quality checker, Where I will help you understand the circumstances of Thuwal weather to"// &
        " know if it's healthy or not! This is to help you know hwo good the "
    Print *,"What is your name?"
    read *,name
    Print *,"Welcome ", name,"! can't wait to help you ! Please enter the date you want the weather on. (P.S, it should be "// &
         "from this month (October)!) If you want to exit, type 0:"

do   
        read *, day
        if (day == 0) then
            print *, "Thanks for using the Weather Quality Checker,", name,"! Stay safe and healthy!"
            exit
        end if
        if (day >= 1 .and. day <= 31) then
            print *, "Thank you for inserting a correct date! You chose the day October", day
            print *, "Now here is the data for that day at 7:00 pm:"

            if (day == 1) then
                temp = 32
                humidity = 63
                aqi = 118
            else if (day == 2) then
                temp = 32
                humidity = 66
                aqi = 120
            else if (day == 3) then
                temp = 31
                humidity = 57
                aqi = 93
            else if (day==4)then 
                temp= 32
                humidity= 54
                aqi=126
            else if(day==5)then 
                temp=32
                humidity=58
                aqi=135
            else if(day==6)then
                temp=33
                humidity=55
                aqi=147
            
            else
                print*,"Sorry but I do not have the information for this day, try a day earlier. Sorry for the innconivince!"
            end if

            print *, "Temperature at 7:00 pm:", temp, "C"
            print *, "Humidity at 7:00 pm:", humidity, "%"
            print *, "AQI at 7:00 pm:", aqi

            if (aqi <= 50) then
                print *, "This day, the health AQI, which is the Air quality is low. Going out at this time is absolotyly ok!."// &
                     "Have fun!!"
            else if (aqi <= 100) then
                print *, "This day, the AQI (Air Quality Index) is ",aqi," which means the air is MODERATE."// &
                         " The air is acceptable, but some people who are sensitive may feel slight effects."// &
                         " If you have asthma or allergies, take care."
            else
                print *, "This day, the AQI (Air Quality Index) is ",aqi," which means the air is UNHEALTHY."// &
                         " Going outside for a long time is not recommended, especially for children or people with breathing problems."// &
                         " Try to stay indoors when possible."
            end if

            exit
        else
            print *, "Invalid day of the month. Please try again (1-31)."
        end if
    end do

end program hello
