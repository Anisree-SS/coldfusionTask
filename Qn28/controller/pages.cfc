
 <!---cfif StructKeyExists(arguments,"pageName")--->
     <!---<cfif len(trim(pageName)) EQ 0>
         <cfsetError &= "Page name is required!" & "<br>">
     <cfelse>
         <cfloop index="i" from="1" to="#len(pageName)#">
             <cfset currentChar = mid(pageName, i, 1)>
             <cfif !((asc(currentChar) Gt 64 && asc(currentChar) Lt 91)||(asc(currentChar) Gt 96 && asc(currentChar) Lt 123)||(asc(currentChar)EQ 32))>
                 <cfsetError &= "Page name should be string!!" & "<br>">
                 <cfbreak>
             <cfif>
         <cfloop>
     <cfif>
     <cfif len(trim(pageDes)) eq 0>
         <cfsetError&="Page description is required!!"&"<br>">
         <cfelseif isNumeric(pageDes)>
             <cfsetError &= "Page description required strings also!!" & "<br>">
     <cfif>--->
 <!---cfif--->

 <!---<cfcomponent>
     <cffunction name = "savePage" access="remote" returnFormat="json">
         <cfargument name="pageName" required="true">
         <cfargument name="pageDes" required="true">
         <cfargument name="pageId" required="true">
         <cfset Error=''>
         <cfif len(trim(pageName)) EQ 0>
         <cfset Error&="Page name is required!!"&"<br>">
         <cfelseif REFind("\d", pageName)>
             <cfset Error&="Page name should be string!!"&"<br>">
         <cfif>
         <cfif len(trim(pageDes)) eq 0>
             <cfset Error&="Page description is required!!"&"<br>">
             <cfelseif IsNumeric(pageDes)>
                 <cfset Error&="Page description required strings also!!"&"<br>">
         <cfif>
         <cfif (len(trim(variables.Error)) eq 0)>
             <cfset variables.update=createObject("component","CFC.pages")>
             <cfset variables.editMsg=#variables.update.savePage(pageId=pageId,pageName=pageName,pageDes=pageDes)#>
             <cfreturn variables.editMsg>
         <cfif>
     <cffunction>
 <cfcomponent>--->


component {
    remote json function savePage(required string pageName,required string pageDes,required integer pageId) {
        variables.error='';
        if(len(trim(pageName)) Eq 0){
            error&="Page name is required!!";
        }
        else if (REFind("\d", pageName)){
            error&="Page name should be string!!";
        }
        else{
            error='';
        }
    
        if(len(trim(pageDes)) Eq 0){
            Error&="Page description is required!!";
        }
        else if(isNumeric(pageDes)){
            Error&="Page description is required!!";
        }
        else{
            error='';
        }

        if(len(error) Eq 0){
            variables.update=createObject("component","CFC.pages");
            variables.editMsg=variables.update.savePage(pageName,pageDes,pageId);
            WriteOutput(variables.editMsg);
            return variables.editMsg;
        }
    }   
}
