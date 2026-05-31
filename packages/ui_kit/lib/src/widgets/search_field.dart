import 'package:ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.hintText,
    required this.onSearch,
    this.onClearSearch,
    this.autofocus = true,
    this.delayInMilliSeconds = 750,
  });

  final String? hintText;
  final ValueChanged<String> onSearch;
  final VoidCallback? onClearSearch;
  final bool autofocus;
  final int delayInMilliSeconds;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late Debouncer _debouncer;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _debouncer = Debouncer(delay: Duration(milliseconds: widget.delayInMilliSeconds));
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final frogTheme = FrogTheme.of(context);
    final textInputStyle = ChatUIKit.of(context).textInputStyle;

    return Theme(
      data: Theme.of(context).copyWith(inputDecorationTheme: textInputStyle.inputDecorationTheme),
      child: TextField(
        style: frogTheme.textStyles.titleMedium.copyWith(color: frogTheme.colors.neutral10),
        autofocus: widget.autofocus,
        keyboardType: TextInputType.text,
        textAlignVertical: TextAlignVertical.center,
        textCapitalization: TextCapitalization.sentences,
        controller: _textEditingController,
        // textCapitalization: TextCapitalization.sentences,
        onChanged: _onTextChanged,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          suffixIcon: _textEditingController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    _clearSearchResult();
                    _textEditingController.clear();
                  },
                  icon: Icon(
                    Icons.close,
                    color: FrogTheme.of(context).colors.neutral20,
                  ),
                )
              : null,
          suffixIconConstraints: const BoxConstraints(minHeight: 5, minWidth: 5),
          hintStyle: frogTheme.textStyles.titleMedium.copyWith(color: FrogTheme.of(context).colors.neutral50),
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  String _searchKey = '';

  void _onTextChanged(String searchKey) {
    if (searchKey == _searchKey) {
      return;
    }
    _searchKey = searchKey;
    if (searchKey.isEmpty) {
      _clearSearchResult();
    } else {
      _debouncer.call(() {
        setState(() {});
        widget.onSearch(searchKey);
      });
    }
  }

  void _clearSearchResult() {
    setState(() {});
    _debouncer.dispose();
    widget.onClearSearch?.call();
  }
}
