import 'package:flutter/material.dart';

class FilterAndSearchBarWidgets extends StatelessWidget {
  const FilterAndSearchBarWidgets({
    super.key,
    required this.onFilterTap,
    required this.onSearchIconTap,
  });
  final VoidCallback onFilterTap;
  final VoidCallback onSearchIconTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: TextField(
          keyboardType: TextInputType.text,
          controller: TextEditingController(),
          onTap: () {},
          onChanged: (value) {},
          focusNode: FocusNode(),
          enabled: false,
          decoration: InputDecoration(
            hintText: 'جستجو در آرتا دیوار',
            hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.grey,
                ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12.5),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
            ),
          ),
        ),
      ),
    );
  }
}
