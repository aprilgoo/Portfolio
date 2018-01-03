<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
    <html lang="kr">

    <head>
        <%@ include file="/page/layout/header.jspf" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>My blog - Write</title>
        <!-- Bootstrap core CSS -->
        <link href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template -->
        <link href="/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <!-- Custom styles for this template -->
        <link href="/bootstrap/css/clean-blog.min.css" rel="stylesheet">
        <!-- summer note css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.js"></script>
   	    
    
    </head>

    <body>       
        <!-- Main Content -->
        <table style="margin:auto">
            <form id="frm" method="POST" action="/qna/insertQnaBoard.do">
            <input type="hidden" id="user_id" name="user_id" value="${map.USER_ID}">
                <!-- Post Content Column -->
                <div class="col-lg-8">
                    <!-- Title -->
                    <th>
                        <div class="form-group">          
                            <h1 class="mt-4"><input width="1000" type="text" id="TITLE" name="TITLE" class="form-control" maxlength="100" placeholder="제목을 입력하세요"  /></h1></div>
                	  	</div>
                <!-- Summer note -->
                <div class="form-group">
                    <textarea class="form-control" id="summernote" name="CONTENTS" rows="7"></textarea>
                    <div class="clearfix">
                        <br>
                        <br>
                        <button type="submit" class="btn btn-primary float-right">글쓰기</button>
                    </div>
               		</div> 
                </th>
                </div>               
            </form>
        </table>
           
        <!-- Bootstrap core JavaScript -->
        <script src="/bootstrap//vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- Custom scripts for this template -->
            <script src="js/clean-blog.min.js"></script>
    </body>
     <%@ include file="/page/layout/footer.jspf" %>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#summernote').summernote({

            placeholder: '내용을 입력하세요',
            tabsize: 2,
            height: 500,
            width: 800,
            minHeight: null,
            maxHeight: null,
            lang: 'ko-KR'            

        });


    });
    </script>

    </html>