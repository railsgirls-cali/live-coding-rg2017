# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'doctor1@test.com', password: '123456789', password_confirmation: '123456789')
User.create(email: 'doctor2@test.com', password: '123456789', password_confirmation: '123456789')
User.create(email: 'doctor3@test.com', password: '123456789', password_confirmation: '123456789')

Disease.create(name: "Acné", description: "El acné quístico difiere de los típicos granos de acné de la cara en que los del acné quístico son mucho más grandes y dolorosos de lo habitual.")
Disease.create(name: "Asma", description: "Se entiende por asma cardiaca el ataque más o menos grave y súbito de disnea que se presenta en ciertos enfermos de corazón y que padecen insuficiencia aguda del ventrículo izquierdo, debido a defectos valvulares aórticos (estenosis, insuficiencia) descompensada, hipertensión, etc.")
Disease.create(name: "Estreñimiento", description: "El estreñimiento crónico puede ser difícil de detener o eliminar, ya que el colon se ha debilitado. En la mayoría de los casos tendrá que ser reentrenado en cuanto a cómo tener una evacuación intestinal.")
Disease.create(name: "Menopausia", description: "Etimológicamente (del griego) significa “cesación o detención” (pausa) del mes, o sea, del flujo menstrual que se produce en la gran mayoría de las mujeres alrededor de los 45-50 años. Antes o después de esta edad se habla de menopausia precoz o tardía.")
