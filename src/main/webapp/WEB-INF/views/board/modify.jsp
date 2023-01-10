<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">register</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
             <div class="row">
                <!-- /.col-lg-6 -->
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board read
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           
                              <form  role="form" action="/board/update" method="post">
                               <div class="form-group">
                               <label>bno</label> <input class="form-control" name='bno' 
                               value='<c:out value="${board.bno}"/>' readonly="readonly">
                               </div>
                               <div class="form-group">
                               <label>Title</label> <input class="form-control" name='title'
                                value='<c:out value="${board.title}"/>' >
                               </div>
                               <div class="form-group">
                               <label>Text area</label>
                               <textarea class="form-control" rows="3" name='content'>
                               <c:out value="${board.content}"/></textarea>
                               </div>
                               <div class="form-group">
                               <label>Writer</label> <input class="form-control" name='writer'
                               value='<c:out value="${board.writer}"/>'readonly="readonly" >
                               </div>
                               <div class="form-group">
                               <label>Regdate</label> <input class="form-control" name='regdate'
                               value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate }"/>' readonly="readonly" >
                               </div>
                               <div class="form-group">
                               <label>Update</label> <input class="form-control" name='updatedate'
                               value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updatedate }"/>'  >
                               </div>
                               
                               <button type="submit"  data-oper='modify' class="btn btn-default" >Modify</button>
                               <button type="submit"  data-oper='remove' class="btn btn-default" >Remove</button>
                               <button type="submit"  data-oper='list' class="btn btn-default" >List</button>
                               <button data-oper='list' class="btn btn-default" 
                               onclick="location.href='/board/list'"
                               >List</button>
                               
                              </form>
                              
                              
                               
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
           </div>
            <!-- /.row -->
      <%@include file="../includes/footer.jsp" %> 

    

