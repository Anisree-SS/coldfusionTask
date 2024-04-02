<cfcomponent>
    <cffunction name="countWord" access="Public">
        <cfargument name="textFile" type="any" required="true">
        <cfset local.path=Expandpath("textFiles/")>
        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.file=cffile.clientFile>
        <cfset local.lastPath=local.path&local.file>
        <cfif cffile.contentType EQ "text">
            <cfset local.fileContent=FileRead(local.lastPath)>
            <cfset local.listArry=ListToArray(local.fileContent," ")>
            <cfset local.count=ArrayLen(local.listArry)>
            <cfelse>
                <cfset local.count="file is not in text Type">
        </cfif>
        <cfreturn local.count>
    </cffunction>
</cfcomponent>