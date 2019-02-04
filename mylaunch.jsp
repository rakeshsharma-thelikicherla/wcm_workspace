<%@page import="com.ibm.workplace.wcm.api.*, com.ibm.workplace.wcm.api.exceptions.*" %>
<%
String id = "";
Repository repository = WCM_API.getRepository();
Workspace workspace = repository.getWorkspace(request.getUserPrincipal());
workspace.setCurrentDocumentLibrary( workspace.getDocumentLibrary("IIC Content") );

DocumentIdIterator authoringTemplates = workspace.findByName(DocumentTypes.AuthoringTemplate, "Workshop");
if( authoringTemplates.hasNext() )
{
    DocumentId authId = (DocumentId)authoringTemplates.next();
    id = authId.getId();
}
%>
<h3>Please select a task:</h3>

<h5><a href="?wcmAuthoringAction=new&type=com.ibm.workplace.wcm.api.WCM_Content&atid=<%=id%>" >Create Content</a></h5>

<h5><a href="?wcmAuthoringAction=openmainview&type=mydrafts" >My Drafts</a></h5>

<h5><a href="?wcmAuthoringAction=openmainview&view=mypendingapproval" >View Content Requiring My Approval</a></h5>
<h5><a href="?wcmAuthoringAction=openmainview&view=contentbytitle" >
View Published Content</a></h5>  