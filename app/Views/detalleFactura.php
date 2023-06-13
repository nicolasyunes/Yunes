
<div class="d-flex justify-content-between p-3 ">
<h5>Detalles de la factura  nro:<?=$facturaUsuario['id']  ?> </h5>
<h6>Fecha <?=$facturaUsuario['fecha']  ?> </h6>
</div>


<div class="card p-3">
<table class="table">
  <thead>
    <tr>
      <th scope="col">ID </th>
      <th scope="col">ID Producto</th>
      <th scope="col">Cantidad</th>
      <th scope="col">Precio unitario</th>
     
    </tr>
  </thead>
  <tbody>
 
    <?php foreach($detalleFactura as $key=>$value):?>
    <tr>
      <th><?=$value['id'] ?></th>
       
     
      <th>
    <?php foreach($productos as $prod):?>
        
                <?php if($prod['id'] ==  $value['producto_id']){?>
                    
                    <?= $prod['nombre_producto']?>
                
                
                <?php }?>
            <?php endforeach;?>

      </th>
      <th><?=$value['cantidad'] ?></th>
      <th>$ <?=$value['precio'] ?></th>
      
    </tr>
    <?php endforeach;?>
    
  </tbody>
</table>

<div class="p-3">
  <h4>Total Factura $ <?=$facturaUsuario['total_venta'] ?></h4>
<a class="btn btn-outline-success my-2 " href="ventas">Volver</a>

</div>
</div>