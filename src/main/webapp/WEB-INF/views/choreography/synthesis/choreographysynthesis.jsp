<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

 <%--  <%@include file="user_javascript.jsp"%>  --%>

<div class="row">
   <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="x_panel">
         <div class="x_title">
            <h2>
               <spring:message code="choreography.my" />
            </h2>
            <ul class="nav navbar-right panel_toolbox">
               <li><a href="${pageContext.request.contextPath}/choreography/synthesis/create"><i class="fa fa-plus"></i></a></li>
               <li><a href="javascript:findAllUsers()"><i class="fa fa-refresh"></i></a></li>
               <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
            </ul>
            <div class="clearfix"></div>
         </div>
         <div class="x_content">
            <p class="text-muted font-13 m-b-30"></p>
            <table id="user_list" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
               <thead>
                  <tr>
                     <th><spring:message code="choreography.name" /> </th>
                     <th><spring:message code="choreography.type" /> </th>
                     <th><spring:message code="common.actions" /> </th>
                  </tr>
               </thead>
               <tfoot>
                  <tr>
                     <th>Choreography_1</th>
                     <th>Choreography specification</th>
                     <th>
                     	<a href="${pageContext.request.contextPath}/choreography/synthesis" class='btn btn-primary btn-xs'><i class='fa fa-folder'></i> <spring:message code='common.update'/></a>
                     	<a href="" class='btn btn-danger btn-xs'><i class='fa fa-trash'></i> <spring:message code='common.delete' /></a> 
                     </th>
                  </tr>
               </tfoot>
               <tbody>
               </tbody>
            </table>
            <div id="modal-expire-session" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
               <div class="modal-dialog modal-sm">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" > <i class="fa fa-exclamation-triangle"></i> <spring:message code="common.caution" /></h4>
                     </div>
                     <div class="modal-body">
                        <h4><spring:message code="common.expire.session.message" /></h4>
                        <input type="hidden" name="bookId" id="bookId" value=""/>
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="common.close" /> </button>
                        <a id="expire-session" href="" class="btn btn-warning"><i class="fa fa-trash"></i> <spring:message code="common.expire.session" /> </a>
                     </div>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>


<%-- 
<%@include file="choreography_design/choreography_design.jsp"%>
<%@include file="projection/projection.jsp"%>
<%@include file="coordination_logic_extraction/coordination_logic_extraction.jsp"%>
<%@include file="selection/selection.jsp"%>
<%@include file="concretization/concretization.jsp"%>
<%@include file="system_integration/system_integration.jsp"%>
--%>
