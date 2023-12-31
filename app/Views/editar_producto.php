<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="assets/estilos_nueva_plantilla.css">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" >
   
    <title>MODIFICAR</title>
</head>
<main>
<?php $session=session(); ?>
   <div class="alert ">
      <?= $session->getFlashdata('msg')?>
   </div>
    
    <form class="p-5" enctype="multipart/form-data" method="post"  action="<?php echo base_url('/actualizar'); ?>">
      <h2>Modificar producto</h2>
      <input type="hidden" name="id"   value="<?php echo $producto['id']; ?>"/>
      <div class="form-group p-2">
        <label for="nombre">Nombre del producto</label>
        <input placeholder="nombre producto"
           type="text" class="form-control" id="nombre_producto" name="nombre_producto" value="<?php echo $producto['nombre_producto']; ?>">
      </div>

      <div class="form-group  p-2">
        <label for="precio">Precio unitario</label>
        <input type="number" class="form-control" id="precio_unitario" name="precio_unitario" value="<?php echo $producto['precio_unitario']; ?>" >
      </div>

      <div class="form-group  p-2 ">
      <label for="imagen_producto">IMAGEN</label>
      <input id="imagen_producto" class="form-control-file" type="file" name="imagen_producto">

      <img class="img-thumbnail" src="<?=base_url()?>assets/img/productos/<?=$producto['imagen_producto'];  ?>" width="100" alt="">
      </div>

      </div>

      <div class="form-group p-2">
        <label for="stock">Stock</label>
        <input type="number" class="form-control" id="stock" name="stock" value="<?php echo $producto['stock']; ?>">
      </div>

      <button type="submit" class="btn btn-primary my-3" >Actualizar</button>
    </form>
</main>
</html>