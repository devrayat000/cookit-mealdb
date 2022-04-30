part of widgets_home;

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      return fluent.TextBox(
        prefix: Icon(Icons.search),
        enabled: false,
        placeholder: 'eg. Chicken Breast',
        padding: fluent.EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: fluent.BoxDecoration(
          border: fluent.Border.all(
            width: 1.0,
            color: fluent.Colors.grey[100],
          ),
          borderRadius: fluent.BorderRadius.circular(4.0),
          color: fluent.Colors.white,
        ),
      );
    } else {
      return TextFormField(
        decoration: InputDecoration(
          hintText: 'eg. Chicken Breast',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          prefixIcon: Icon(Icons.search),
          fillColor: Colors.white,
        ),
        enabled: false,
      );
    }
  }
}
