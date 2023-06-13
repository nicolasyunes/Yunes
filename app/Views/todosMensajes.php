<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="assets/css/bootstrap.min.css" rel="stylesheet">

  <title>consultas </title>
</head>

<body>
  <div class="container-fluid">

    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nombre</th>
          <th scope="col">Email</th>
          <th scope="col">Mensaje</th>
          


        </tr>
      </thead>
      <tbody>
        
          
        <?php foreach ($consultas as $item): ?>
          
          <tr>

            <td>
              <?= $item['id']; ?>
            </td>
            <td>
              <?= $item['nombre']; ?>
            </td>
            <td>
              <?= $item['email']; ?>
            </td>
            <td>
              <?= $item['mensaje']; ?>
            </td>


         

          </tr>  
            


        <?php endforeach; ?>
        
        
      </tbody>

      
      
       

    </table>
    <a href="<?= base_url('consultas'); ?>" type="button"
                class="btn btn-outline-success  m-2">Volver</a>
  </div>
</body>

</html>