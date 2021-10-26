class Producto < ApplicationRecord
  belongs_to :categorium

  validates :nombre,
  :descripcion,
  :imagen, presence: { message: "Este campo es requerido" }


  validates :nombre,
  length: {minimum: 4,maximun: 100,
 message: "El nombre debe de tener entre 4 y 100 caracteres" }

  validates :descripcion,
  length: {minimum: 15,maximun: 200} 

  validates :nombre, :descripcion,
  uniqueness: { message: "Este nombre ya ha sido ocupado" }
  
end
