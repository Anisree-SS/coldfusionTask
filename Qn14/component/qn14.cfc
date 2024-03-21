<cfcomponent>
    <cffunction name="imgDisplay" access="public">
        <cfargument name="imgName"  required="true">
        <cfargument name="imgDesc" required="true">
        <cfargument name="imgFile" required="true">
        <cfset local.path = ExpandPath("../Qn14/assets/")>
        <cffile action ="upload" destination ="#local.path#" nameConflict ="MakeUnique">
        <cfset local.image = cffile.clientFile>
        <cfquery name="imageList" result="imageResult">
            insert into imageList(imgName,imgDes,imgFile)values('#arguments.imgName#','#arguments.imgDesc#','#local.image#')
        </cfquery>
        <cfquery name="name">
            select imgId from imageList
            where imgFile=<cfqueryparam value='#local.image#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url="imageList.cfm?imgId=#name.imgId#">
    </cffunction>

    <cffunction name="displayThumbnail" access="remote" >
        <cfargument name="imgId" required="true">
        <cfquery name="display">
            select * from imageList
            where imgId=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn display>
    </cffunction>

    <cffunction name="displayImage" access="remote">
        <cfargument name="imgId" required="true">
        <cfquery name="display">
            select * from imageList
            Where imgId=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn display>
    </cffunction>
</cfcomponent>