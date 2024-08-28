class Patient{
  String name;
  String time;
 // IconData? iconType;

  Patient({required this.name,
            required this.time,
            //this.iconType
            });
}

List<Patient> theAppoints=[
  Patient(
    name:'Iufan Ruga',
    time:'10:50'
  ),
  Patient(
      name:'Victoria Olari',
      time:'13:00'
  ),
  Patient(
      name:'Diana Stefan',
      time:'15:20'
  ),
  Patient(
      name:'Gheorge Popa',
      time:'16:10'
  ),
  Patient(
      name:'Alexandru Sandu',
      time:'16:40'
      //iconType: Icons.cancel,
  ),
  Patient(
      name:'Dumitru Simona',
      time:'08:00'
      //iconType: Icons.check_circle,
  ),

];