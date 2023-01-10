<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
             <div class="row">
                <!-- /.col-lg-6 -->
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board List Page
                            <button id='regBtn'type="button" class="btn btn-xs pull-right">Dark</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>수정일</th>
                                        </tr>
                                    </thead>
                                   
                                    <c:forEach items="${list}" var="board">
                                     <tr>
                                    <td><c:out value="${board.bno }"/></td>
                                    <td><a href='/board/read?bno=<c:out value="${board.bno}"/>'>
                                    <c:out value="${board.title}"/></a> </td>
                                    <td><c:out value="${board.writer}"/></td>
                                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                                    <td><fmt:formatDate pattern="yyyy-MM-dd"  value="${board.updatedate}"/></td>
                                      </tr>
                                     </c:forEach>
                                     
                                </table>
                                
                                <div class="modal" id="myModal" tabindex="-1">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title">Modal title</h5>
					       
					      </div>
					      <div class="modal-body">
					        <p>처리가 완료되었습니다</p>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        <button type="button" class="btn btn-primary">Save changes</button>
					      </div>
					    </div>
					  </div>
					</div>
					<!-- modal -->
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
           </div>
            <!-- /.row -->
      <%@include file="../includes/footer.jsp" %> 

    <!-- jQuery -->
    <!-- <script src="/resources/vendor/jquery/jquery.min.js"></script>
 -->
   


