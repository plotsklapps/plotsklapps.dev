import 'package:portfolio/all_imports.dart';

/// Email mobile screen of the app.
class EmailScreenMobile extends StatefulWidget {
  /// Creates a new instance of [EmailScreenMobile].
  const EmailScreenMobile({super.key});

  @override
  State<EmailScreenMobile> createState() => _EmailScreenMobileState();
}

class _EmailScreenMobileState extends State<EmailScreenMobile> {
  late final TextEditingController ctrlSubject;
  late final TextEditingController ctrlRecipient;
  late final TextEditingController ctrlBody;

  @override
  void initState() {
    super.initState();
    ctrlSubject = TextEditingController();
    ctrlRecipient = TextEditingController(text: 'plotsklapps@gmail.com');
    ctrlBody = TextEditingController();
  }

  @override
  void dispose() {
    ctrlSubject.dispose();
    ctrlRecipient.dispose();
    ctrlBody.dispose();
    super.dispose();
  }

  Future<void> send() async {
    String platformResponse;

    final email = Email(
      body: ctrlBody.text,
      subject: ctrlSubject.text,
      recipients: [ctrlRecipient.text],
    );

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'Thank you for reaching out to me!';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
        showCloseIcon: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: send,
            icon: const Icon(FontAwesomeIcons.paperPlane),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: ctrlRecipient,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Recipient',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: ctrlSubject,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration(
                      labelText: 'Subject',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: ctrlBody,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.text,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: const InputDecoration(
                      labelText: 'Message',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  FontAwesomeIcons.envelope,
                  size: 300,
                ).animate().flip(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
