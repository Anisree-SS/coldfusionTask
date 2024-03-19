<cfcomponent>
    <cffunction name="show" access="public">
        <cfset today=DateFormat(now(),"dd-mmm-yyyy")>
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
            <cfset dayTOFind=i&"/"&DateFormat(now(),"mmm/yyyy")>
            <cfif Dayofweek(dayTOFind) Eq friday>
                <cfset lastFri="#dayTOFind#">
                <cfbreak>
            </cfif>
        </cfloop>
        <cfset count = 0>
        <cfset arr=[]>
        
        <cfoutput>
            <br>
            <span>Today : #today# </span><br>
            <span>Current month numeric: #DateFormat(now(),"mm")#</span> <br>
            <span>Current month in word : #DateFormat(now(),"mmmm")# </span><br>
            <span>Days in a month : #DaysInMonth(today)#-#DateFormat(now(),"mmm")#-#DateFormat(now(),"yyyy")#  #dayIs#</span><br>
            <span>Last friday is : #lastFri#</span><br>
            <!---loop to print last 5 days--->
            <cfloop index="i" from="#DaysInMonth(today)#" to="15" step="-1">
            <cfset dayTofind=i&"-"&DateFormat(now(),"mmm-yyyy")>
            <cfset weekNo=Dayofweek(dayTofind)>
            <cfswitch expression=#weekNo#>
                <cfcase value=1>
                    <cfset colors="##ff0000">
                    <cfset day="Sunday">
                </cfcase>
                <cfcase value=2>
                    <cfset colors="##008000">
                    <cfset day="Monday"> 
">
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
            <cfset count+=1>
            <cfif weekNo eq 5 OR weekNo Eq 7>
                <b>
                    <FONT COLOR="#colors#">
                        #dayTofind# - #day#
                    </FONT>
                </b>
            <cfelse>
                <FONT COLOR="#colors#">
                    #dayTofind# - #day#
                </FONT>
            </cfif>
            <cfif count Eq 6>
                <cfbreak>
            </cfif>
        </cfloop>

        </cfoutput>
    </cffunction>
</cfcomponent>