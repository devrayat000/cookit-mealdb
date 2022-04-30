part of widgets_home;

class PrimaryAction extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;

  const PrimaryAction({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      return fluent.FilledButton(child: child, onPressed: onPressed);
    } else {
      return ElevatedButton(onPressed: onPressed, child: child);
    }
  }
}

class SecondaryAction extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;

  const SecondaryAction({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      return fluent.OutlinedButton(child: child, onPressed: onPressed);
    } else {
      return OutlinedButton(onPressed: onPressed, child: child);
    }
  }
}
