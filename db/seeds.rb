# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times{ |i|
  user = User.create(email: "doctor#{i}@test.com", password: '123456789', password_confirmation: '123456789')
  Profile.create(name: "Pepito#{i}", rating: 0, uuid: 123456789, description: 'A doctor description', user: user)
}

Disease.create(name: "Acné", description: "El acné quístico difiere de los típicos granos de acné de la cara en que los del acné quístico son mucho más grandes y dolorosos de lo habitual.")
Disease.create(name: "Asma", description: "Se entiende por asma cardiaca el ataque más o menos grave y súbito de disnea que se presenta en ciertos enfermos de corazón y que padecen insuficiencia aguda del ventrículo izquierdo, debido a defectos valvulares aórticos (estenosis, insuficiencia) descompensada, hipertensión, etc.")
Disease.create(name: "Estreñimiento", description: "El estreñimiento crónico puede ser difícil de detener o eliminar, ya que el colon se ha debilitado. En la mayoría de los casos tendrá que ser reentrenado en cuanto a cómo tener una evacuación intestinal.")
Disease.create(name: "Menopausia", description: "Etimológicamente (del griego) significa “cesación o detención” (pausa) del mes, o sea, del flujo menstrual que se produce en la gran mayoría de las mujeres alrededor de los 45-50 años. Antes o después de esta edad se habla de menopausia precoz o tardía.")

Recipe.create(name: 'Papaya / Lechosa', description: 'La papaya es un ingrediente esencial en una gran cantidad de productos de belleza. La papaya es un remedio para el acné completamente natural que elimina las células muertas y el exceso de lípidos de la superficie de la piel, dejándola suave y tersa. Los lípidos son un término general para describir las grasas. La papaya también contiene una enzima llamada papaína, que reduce la inflamación y ayuda a prevenir la formación de pus. Enjuague la cara con agua y seque. Triture la pulpa de la papaya, hasta que quede de una consistencia que se puede aplicar fácilmente a la piel. Deje actuar durante unos 15-20 minutos y luego enjuague completamente con agua tibia. Si su piel tiende a la sequedad, utilice una crema hidratante adecuada para su tipo de piel, después de usar esta mascarilla.', disease_id: 1)
Recipe.create(name: 'El poderoso jengibre', description: '', disease_id: 2)
Recipe.create(name: 'El poderoso jengibre', description: "El té de jengibre es una gran alternativa para aliviar el asma de manera natural. Algunos de sus componentes tendrían un efecto broncodilatador que ayudarían a respirar mejor, según científicos de la Universidad de Columbia. Este efecto se debería a su acción para inhibir una enzima que hace que los músculos de las vías respiratorias se contraigan y al mismo tiempo activa otra enzima que relaja las vías respiratorias.", disease_id: 3)
Recipe.create(name: 'Jugo de aloe vera', description: "El aloe vera o sábila es una de esas plantas medicinales con múltiples beneficios para la salud tanto a nivel interno como externo. Tomar todos los días su jugo contribuye a limpiar de manera natural el colon y facilitar la eliminación de los desechos.", disease_id: 4)
