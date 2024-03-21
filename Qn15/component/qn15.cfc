<cfcomponent>
    <cffunction name="multiply" access="public" returnType="numeric">
        <cfargument name="num1" type="numeric" required="true">
        <cfargument name="num2" type="numeric" required="true">
        <cfargument name="num3" type="numeric" required="false" default="1">
        <cfargument name="num4" type="numeric" required="false" default="1">
        <cfreturn arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
    </cffunction>
</cfcomponent>