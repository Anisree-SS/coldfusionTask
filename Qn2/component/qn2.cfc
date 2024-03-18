<cfcomponent>
    <cffunction name="show" access="public" returnType="string">
        <cfargument name="number" required="true">
        <cfswitch expression=#number#>
            <cfcase value=1> <cfreturn "Ok"> </cfcase>
            <cfcase value=2> <cfreturn "Ok"> </cfcase>
            <cfcase value=3> <cfreturn "Fair"> </cfcase>
            <cfcase value=4> <cfreturn "Good"> </cfcase>
            <cfcase value=5> <cfreturn "Very Good"> </cfcase>
            <cfdefaultcase><cfreturn "Enter numbers from 1 to 5"></cfdefaultcase>
        </cfswitch>
    </cffunction>
</cfcomponent>