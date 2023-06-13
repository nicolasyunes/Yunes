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
          <th scope="col">Acciones</th>


        </tr>
      </thead>
      <tbody>
          <h6>Mensajes sin leer</h6>
          
        <?php foreach ($consultas as $item): ?>
          <?php if ($item['activo'] == 1) :?>
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


            <td>
              <a href="<?= base_url('borrarConsulta/' . $item['id']); ?>" type="button"
                class="btn btn-outline-danger  m-2">Leido</a>

            </td>

          </tr>
       <?php endif;?>
            


        <?php endforeach; ?>
        
        
      </tbody>

      
      
       

    </table>
    <a href="<?= base_url('todos/'); ?>" type="button"
                class="btn btn-outline-success  m-2">Todos los mensajes</a>
  </div>
</body>

</html>