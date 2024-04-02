<cfcomponent>
    <cffunction name="show" access="public">
        <cfset result={}>

        <cfset result.today=DateFormat(now(),"dd-mmm-yyyy")>
        <cfset result.lastDay=DaysInMonth(result.today)&"/"&DateFormat(now(),"mm/yyyy")>
        <cfset result.monthNumeric=DateFormat(now(),"mm")>
        <cfset result.monthInWord=DateFormat(now(),"mmmm")>

        <cfset days=Dayofweek(result.lastDay)>
        <cfswitch expression=#days#>
            <cfcase value=1> <cfset result.dayIs = "Sunday"> </cfcase>
            <cfcase value=2> <cfset result.dayIs = "Monday"> </cfcase>
            <cfcase value=3> <cfset result.dayIs = "Tuesday"> </cfcase>
            <cfcase value=4> <cfset result.dayIs = "Wednesday"> </cfcase>
            <cfcase value=5> <cfset result.dayIs = "Thursday"> </cfcase>
            <cfcase value=6> <cfset result.dayIs = "Friday"> </cfcase>
            <cfcase value=7> <cfset result.dayIs = "Saturday"> </cfcase>
        </cfswitch>
        
        <cfset result.lastDayInMonth=DaysInMonth(result.today)&"-"&DateFormat(now(),"mmm")&"-"&DateFormat(now(),"yyyy")&result.dayIs>

        <cfloop index="i" from="#DaysInMonth(result.today)#" to="1" step="-1">
            <cfset local.dayTOFind=i&"/"&DateFormat(now(),"mmm/yyyy")>
            <cfif Dayofweek(local.dayTOFind) Eq 6>
                <cfset result.lastFriday="#local.dayTOFind#">
                <cfbreak>
            </cfif>
        </cfloop>
        <cfreturn result>
    </cffunction>


    <cffunction name="lastDays" access="public">
        <cfset local.count = 0>
        <cfset local.colorData=[]>
        <cfloop index="i" from="#DaysInMonth(DateFormat(now(),"dd-mmm-yyyy"))#" to="15" step="-1">
            <cfset local.dayTofind=i&"-"&DateFormat(now(),"mmm-yyyy")>
            <cfset local.weekNo=Dayofweek(local.dayTofind)>
            <cfswitch expression=#local.weekNo#>
                <cfcase value=1>
                    <cfset colors="##ff0000">
                    <cfset day="Sunday">
                </cfcase>
                <cfcase value=2>
                    <cfset colors="##008000">
                    <cfset day="Monday"> 
                </cfcase>
                <cfcase value=3>
                    <cfset colors="##ffa500">
                    <cfset day="Tuesday">
                </cfcase>
                <cfcase value=4>
                    <cfset colors="##ffff00">
                    <cfset day="Wednesday">
                </cfcase>
                <cfcase value=5>
                    <cfset colors="##000000">
                    <cfset day="Thursday">
                </cfcase>
                <cfcase value=6>
                    <cfset colors="##0000ff">
                    <cfset day="Friday ">
                </cfcase>
                <cfcase value=7>
                    <cfset colors="##ff0000">
                    <cfset day="Saturday">
                </cfcase>
            </cfswitch>
            <cfset local.count+=1>
            <cfif local.weekNo eq 5 OR local.weekNo Eq 7>
                <cfset arrayAppend(local.colorData, {date =local.dayTofind, day=day, fontWeight="bold", color = colors})>
            <cfelse>
                <cfset arrayAppend(local.colorData, {date = local.dayTofind, day=day, fontWeight="normal", color = colors})>
            </cfif>
            <cfif local.count Eq 5>
                <cfbreak>
            </cfif>
        </cfloop>
        <cfreturn local.colorData>
    </cffunction>
</cfcomponent>