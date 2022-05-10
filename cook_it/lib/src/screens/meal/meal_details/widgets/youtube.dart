part of widgets_meal_details;

class YoutubeTutorial extends StatefulWidget {
  final String url;

  const YoutubeTutorial({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<YoutubeTutorial> createState() => _YoutubeTutorialState();
}

class _YoutubeTutorialState extends State<YoutubeTutorial> {
  final List<bool> _expanded = [false];
  late final YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: widget.url.replaceFirst(RegExp(r'^.*v='), ''),
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        ExpansionPanel(
          canTapOnHeader: true,
          backgroundColor: Colors.lightBlue[100],
          headerBuilder: (context, isExpanded) => Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Wanna ses how it's made?",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[600],
                    ),
              ),
            ),
          ),
          body: YoutubePlayer(
            controller: _youtubeController,
          ),
          isExpanded: _expanded[0],
        ),
      ],
      expansionCallback: (i, isOpen) {
        setState(() {
          _expanded[0] = !isOpen;
        });
      },
    );
  }
}
