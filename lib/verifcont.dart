enum verificar {
  verduraisempty, 
  precioisempty,
  imagenisempty,
  allIsEmpty,
  formFilledOutCorrectly,
  success,
  verduraIsAlreadyUsed,
  desconocido
}
verificar verifyInfo(String verdura, String precio, String imagen){
  if(verdura.isEmpty && precio.isEmpty && imagen.isEmpty){
    return verificar.allIsEmpty;
  }
  if(verdura.isEmpty){
    return verificar.verduraisempty;
  }
  if(precio.isEmpty){
    return verificar.precioisempty;
  }
  if(imagen.isEmpty){
    return verificar.imagenisempty;
  }
  return verificar.formFilledOutCorrectly;
}
verificar verifyResp(Map response){
  
  
  return verificar.success;
}
String textStatus(verificar status){
  switch (status){
    case verificar.allIsEmpty: return 'No existen datos';
    case verificar.verduraisempty: return 'Por favor ingrese la verdura';
    case verificar.precioisempty: return 'Por favor ingrese el precio';
    case verificar.imagenisempty: return 'Por favor ingrese la imagen';
    case verificar.verduraIsAlreadyUsed: return 'Esta verdura ya fue ingresada';
    case verificar.success: return 'Datos ingresados exitosamente';
    case verificar.desconocido: return 'Por favor vuelva a intentarlo';
    case verificar.formFilledOutCorrectly: return 'Ok'; break;
  }
  return 'Llorar';
}