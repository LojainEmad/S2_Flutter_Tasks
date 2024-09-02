class DetailsData{
  final String count;
  final String label;

  DetailsData(
      {
        required this.count,
        required this.label,
       }
      );
}


List<DetailsData>dataDetails= [
    DetailsData(
      count:'2342',
      label: 'Popularity'
    ),

  DetailsData(
      count:'4736',
      label: 'Like'
  ),

  DetailsData(
      count:'136',
      label:'Followed'
  ),

];