<cfset variables.pageId=0>
<cfset variables.name=''>
<cfset variables.description=''>
<cfset variables.editMsg=''>
<cfset variables.Error =''> 

<cfif structKeyExists(url,"pageId")>
    <cfset variables.pageId=url.pageId>
    <cfset variables.checkRow=createObject("component","CFC.pages").editPage(url.pageId)>
    <cfset variables.name=variables.checkRow.pageName>
    <cfset variables.description=variables.checkRow.pageDes>
</cfif>

<cfset variables.heading=structKeyExists(variables,"pageId") AND variables.pageId GT 0 ?"Edit Page":"Add Page">

<cfif StructKeyExists(form,"pageName")>
    <!---<cfif len(trim(form.pageName)) EQ 0>
        <cfset variables.Error &= "Page name is required!" & "<br>">
    <cfelse>
        <cfloop index="i" from="1" to="#len(form.pageName)#">
            <cfset currentChar = mid(form.pageName, i, 1)>
            <cfif !((asc(currentChar) Gt 64 && asc(currentChar) Lt 91)||(asc(currentChar) Gt 96 && asc(currentChar) Lt 123)||(asc(currentChar)EQ 32))>
                <cfset variables.Error &= "Page name should be string!!" & "<br>">
                <cfbreak>
            </cfif>
        </cfloop>
    </cfif>
    <cfif len(trim(form.pageDes)) eq 0>
        <cfset variables.Error&="Page description is required!!"&"<br>">
        <cfelseif isNumeric(form.pageDes)>
            <cfset variables.Error &= "Page description required strings also!!" & "<br>">
    </cfif>--->
    <cfif len(trim(form.pageName)) EQ 0>
        <cfset variables.Error&="Page name is required!!"&"<br>">
        <cfelseif REFind("\d", form.pageName)>
            <cfset variables.Error&="Page name should be string!!"&"<br>">
    </cfif>
    <cfif len(trim(form.pageDes)) eq 0>
        <cfset variables.Error&="Page description is required!!"&"<br>">
        <cfelseif IsNumeric(form.pageDes)>
            <cfset variables.Error&="Page description required strings also!!"&"<br>">
    </cfif>
    <cfif len(trim(variables.Error)) eq 0>
        <cfif IsNumeric(form.pageId)>
            <cfset variables.update=createObject("component","CFC.pages")>
            <cfset variables.editMsg=#variables.update.savePage(pageId=form.pageId,pageName=form.pageName,pageDes=form.pageDes)#>
        </cfif>
    </cfif>  
</cfif>