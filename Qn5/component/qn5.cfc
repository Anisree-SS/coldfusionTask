<cfcomponent>

    <!---user Age--->
    <cffunction name="userAge" access="public">
        <cfargument name="user" type="any" required="true">
        <cfset local.userAge=DateDiff("yyyy",#arguments.user#, now())>
        <cfreturn local.userAge>
    </cffunction>

    <!---mother Age--->
    <cffunction name="motherAge" access="public">
        <cfargument name="user" type="any" required="true">
        <cfargument name="mother" type="any" required="true">
        <cfset local.motherAge=DateDiff("yyyy",#arguments.mother#,#arguments.user#)>
        <cfreturn local.motherAge>
    </cffunction>

    <!---remaining days--->
    <cffunction name="remainingDays" access="public">
        <cfargument name="dob" type="any" required="true">
        <cfset local.currentAge=DateDiff("yyyy",#arguments.dob#,now())>
        <cfset local.nextAge=local.currentAge+1>
        <cfset local.currentDate=DateFormat(now(),"yyyy/mm/dd")>
        <cfset local.nextBirthday=CreateDate(DateFormat(now(),"yyyy"),DateFormat(arguments.dob,"mm"),DateFormat(arguments.dob,"dd"))>
        <cfif currentDate lt nextBirthday>
            <cfset local.remaining=DateDiff("d",local.currentDate,local.nextBirthday)>
            <cfelse>
                <cfset nextBirthday = DateAdd("yyyy", 1, nextBirthday)>
                <cfset local.remaining=DateDiff("d",local.currentDate,local.nextBirthday)>
        </cfif>
        <cfreturn local.remaining>
    </cffunction>
</cfcomponent>