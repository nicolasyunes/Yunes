<head>

    <link href="assets/catalogo.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">



</head>


<?php
                if(session('mensaje')){?>
                    <div class="alert alert-danger">
                    <?php 
                    echo session('mensaje');
                    
                    ?>
                    </div>
                <?php } ?>

<section class="container-cards container-fluid justify-content-start align-baseline d-flex ">
<?php $session=session(); ?>

  


<?php helper(['form','url','cart']); ?>
        <?php $session=session(); ?>
    <?php foreach ($productos as $prod): ?>
        <?php if ($prod['activo'] == 1) :?>
        <div class="card item col-lg-2 col-md-3 col-sm-12">
            <?php
            echo form_open('agregarCarrito');
            echo form_hidden('id', $prod['id']);
            echo form_hidden('price', $prod['precio_unitario']);
            echo form_hidden('name', $prod['nombre_producto']);

            ?>
            
           
           <img class="img-responsive " src="<?= base_url() ?>assets/img/productos/<?= $prod['imagen_producto']; ?>">

            <div class="card-body">
                <h5 class="card-title">
                    <?= $prod['nombre_producto']; ?>
                </h5>
                <p class="card-text  ">
                  <b> Stock:</b> <?= $prod['stock']; ?>
                </p>
                <p class="card-text">
                  <b>
                     $ <?= $prod['precio_unitario']; ?>
                  </b>
                </p>
                
                <?php if (session()->get('logged_in')): ?>

                    <button class="btn btn-primary btn-sm" type="submit">Agregar</button>
                <?php  endif; ?>
            </div>
            <?php echo form_close(); ?>
            
        </div>
        



        <?php endif;?>

    <?php endforeach; ?>


</section>