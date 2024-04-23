component {
    remote any function savePage(pageId,pageName,pageDes) returnFormat="JSON" {
        local.error='';
        if(len(trim(pageName)) Eq 0 ){
             local.error&="Page name is required!!";
        }
        else if ((REFind("\d", pageName)) OR (len(pageName) GT 50)){
            local.error&="Page name should be string with less than 50 letters!! ";
        }
        else{
            local.error='';
        }
        if(len(trim(pageDes)) Eq 0){
            local.error&="Page description is required!!";
        }
        else if(isNumeric(pageDes)){
            local.error&="Page description is required!!";
        }
        else{
            local.error='';
        }
        if(len(error) Eq 0){
            local.update=createObject("component","CFC.pages");
            local.editMsg=local.update.savePage(pageName,pageDes,pageId);
            return local.editMsg;  
        }
    
    }   
}

