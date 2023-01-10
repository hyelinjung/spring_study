<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
     <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
        $(".sidebar-nav")
        .attr("class", "sidebar-nav navbar-collapse collapes")
        .attr("aria-expanded",'false')
        .attr("style","height:1px");
        
   var result = '<c:out value="${result}"/>'
   checkModal(result);
   history.replaceState({},null,null);
   
   function checkModal(result){
	   if(result === ''||history.state){
		   return;
	   }
	   if(parseInt(result)>0){
		   $(".modal-body").html("게시글"+parseInt(result)+"번이 등록되었습니다.");
	   }   
    
	   $("#myModal").modal("show");
   }
   $("#regBtn").on("click", function(){
	   self.location="/board/register";
   });
    });
   
    
    </script>
    </body>

</html>