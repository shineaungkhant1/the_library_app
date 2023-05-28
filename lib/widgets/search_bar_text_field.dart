import 'package:flutter/material.dart';

import '../utils/dimens.dart';

class SearchBarTextField extends StatefulWidget {
  final Function(String) onSearch;

  const SearchBarTextField({Key? key, required this.onSearch})
      : super(key: key);

  @override
  State<SearchBarTextField> createState() => _SearchBarTextFieldState();
}

class _SearchBarTextFieldState extends State<SearchBarTextField> {
  final TextEditingController _controller = TextEditingController();
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _hasText = _controller.text.isNotEmpty;
      widget.onSearch(_controller.text);
    });
  }

  //
  void _onTextChanged(String text) {
    setState(() {
      _hasText = _controller.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _clear() {
    setState(() {
      _hasText = false;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        hintText: "Search Play Books",
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: MARGIN_MEDIUM_4,
        ),
        suffixIcon: _hasText
            ? IconButton(
                icon: const Icon(
                  Icons.clear,
                  color: Colors.black54,
                ),
                onPressed: _clear,
              )
            : null,
      ),
      autofocus: true,
      onChanged: _onTextChanged,
    );
  }
}
