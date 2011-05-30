

<%@ page import="org.imageterrier.webapp.MetadataImporter" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'metadataImporter.label', default: 'MetadataImporter')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${metadataImporterInstance}">
            <div class="errors">
                <g:renderErrors bean="${metadataImporterInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description"><g:message code="metadataImporter.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: metadataImporterInstance, field: 'description', 'errors')}">
                                    <g:textField name="description" value="${metadataImporterInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="groovyClosure"><g:message code="metadataImporter.groovyClosure.label" default="Groovy Closure" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: metadataImporterInstance, field: 'groovyClosure', 'errors')}">
                                    <g:textField name="groovyClosure" value="${metadataImporterInstance?.groovyClosure}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="metadataImporter.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: metadataImporterInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${metadataImporterInstance?.name}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
