<style>
    table {
        margin:auto;
        width:50%;

    }
    table, th, td {
        border: 1px solid #ddd;
        border-collapse: collapse;
    }

    img {
        height:50%;
        width:30%;
    }


</style>
<g:link action="create"><asset:image src="/skin/database_add.png" style="height: 50px; width: 50px; padding-left: 75%"/></g:link>
<table>
    <thead>
    <tr>
        <g:each in="${domainProperties}" var="p" status="i">
            <g:sortableColumn property="${p.property}" title="${p.label}" />
        </g:each>
        <g:sortableColumn property="String" title="Actions"/>
    </tr>
    </thead>
    <tbody>
    <g:each in="${collection}" var="bean" status="i">
        <tr>
            <g:each in="${domainProperties}" var="p" status="j">
                <g:if test="${j!=5}">
                    <td><f:display bean="${bean}" property="${p.property}" displayStyle="${displayStyle?:'table'}" theme="${theme}"/></td>
                </g:if>
                <g:elseif test="${j==5}">
                    <td><f:input bean="${bean}" property="${p.property}" disabled="disabled"/></td>
                    <td>
                        <g:link action="edit" id="${bean.id}"><asset:image src="skin/database_edit.png"/></g:link>
                        <g:link action="delete" id="${bean.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}')"><asset:image src="skin/database_delete.png"/></g:link>
                        <g:link action="show" id="${bean.id}"><asset:image src="/skin/information.png"/></g:link>
                    </td>
                </g:elseif>
            </g:each>
    </g:each>
    </tr>
    </tbody>
</table>
