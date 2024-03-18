<cfcomponent>
    <cffunction name="show" access="public">
        <cfset today=DateFormat(now(),"dd/mmm/yyyy")>
        <cfset lastDay=DaysInMonth(today)&"/"&DateFormat(now(),"mm/yyyy")>
        <cfset days=Dayofweek(lastDay)>

        <cfswitch expression=#days#>
            <cfcase value=1> <cfset dayIs = "sunday"> </cfcase>
            <cfcase value=2> <cfset dayIs = "mon"> </cfcase>
            <cfcase value=3> <cfset dayIs = "tue"> </cfcase>
            <cfcase value=4> <cfset dayIs = "wed"> </cfcase>
            <cfcase value=5> <cfset dayIs = "thur"> </cfcase>
            <cfcase value=6> <cfset dayIs = "fri"> </cfcase>
            <cfcase value=7> <cfset dayIs = "sat"> </cfcase>
        </cfswitch>
        
        <cfset friday=6>
        <cfloop index="i" from="#DaysInMonth(today)#" to="1" step="-1">
            <cfset dayTOFind=i&"/"&DateFormat(now(),"mm/yyyy")>
            <cfif Dayofweek(dayTOFind) Eq friday>
                <cfset lastFri="#dayTOFind#">
                <cfbreak>
            </cfif>
        </cfloop>
        <cfset count=0>
        <cfoutput>
            Today : #today# <br>
            Current month numeric: #DateFormat(now(),"mm")# <br>
            Current month in word : #DateFormat(now(),"mmmm")# <br>
            Days in a month : #DaysInMonth(today)#/#DateFormat(now(),"mm")#/#DateFormat(now(),"yyyy")#  #dayIs#<br>
            Last friday is : #lastFri#
        </cfoutput>
    </cffunction>
</cfcomponent>