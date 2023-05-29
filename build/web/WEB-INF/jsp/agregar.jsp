<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

        <style>
            body {
                font-family: 'Courier', Arial, sans-serif;
            }
            .card {
                margin-top: 4rem;
                width: 20rem;
            }
            .card-header {
                background-color: #17a2b8;
                color: white;
            }
            .card-header h4 {
                margin-bottom: 0;
            }
            .card-body {
                padding: 1.5rem;
            }
            .form-control {
                margin-bottom: 1rem;
            }
            .btn-success {
                margin-right: 0.5rem;
            }
        </style>

    </head>
    <body>
        
        <<div class="d-flex justify-content-center">
    <div class="container mt-4 col-lg-4">
        <div class="card">
            <div class="card-header bg-dark">
                <h4 class="text-center ">Add a new person</h4>
            </div>
            <div class="card-body text-center">
                <form method="POST">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control" />
                    <label>Correo</label>
                    <input type="text" name="correo" class="form-control" />
                    <label>Teléfono</label>
                    <input type="text" name="telefono" class="form-control" />
                    <input type="submit" value="Agregar" class="btn btn-success rounded-pill" />
                    <a href="index.htm" class="btn btn-danger rounded-pill">Regresar</a>
                </form>
            </div>
        </div>
    </div>
</div>

            
        
    </body>
</html>
