import 'package:divar/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

class FilterAndSearchBarWidgets extends StatelessWidget {
  const FilterAndSearchBarWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, SearchScreen.id);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ListTile(
            title: TextField(
              keyboardType: TextInputType.text,
              controller: TextEditingController(),
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
        ),
      ),
    );
  }
}
