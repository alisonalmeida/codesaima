// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:codesaima/core/person_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ListOfPeople extends StatefulWidget {
  const ListOfPeople({Key? key}) : super(key: key);

  @override
  State<ListOfPeople> createState() => _ListOfPeopleState();
}

TextEditingController _searchQueryController = TextEditingController();
bool _isSearching = false;
String searchQuery = "Search query";

class _ListOfPeopleState extends State<ListOfPeople> {
  late final Box personListBox;

  @override
  void initState() {
    personListBox = Hive.box<Person>('personList');
    super.initState();
  }

  addPerson(Person person) {
    personListBox.add(person);
  }

  removePerson(int index) {
    personListBox.deleteAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching ? _buildSearchField() : Text('Pessoas cadastradas'),
        actions: _buildActions(),
        leading: _isSearching ? const BackButton() : Container(),
      ),
      body: Center(
          child: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder(
                valueListenable: personListBox.listenable(),
                builder: (context, Box box, widget) {
                  if (box.isEmpty) {
                    return Center(
                      child: Text('Vazio'),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: box.length,
                        itemBuilder: (context, index) {
                          var currentBox = box;
                          var personData = currentBox.getAt(index)!;
                          var person = personData as Person;
                          return Card(
                            margin: EdgeInsets.all(10),
                            child: ListTile(
                              title: Text(person.name),
                              subtitle: Text(person.phone),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.edit)),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          personListBox.deleteAt(index);
                                        });
                                      },
                                      icon: Icon(Icons.delete)),
                                ],
                              ),
                              leading: Icon(Icons.person),
                            ),
                          );
                        });
                  }
                }),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.person_add,
            size: 30,
          ),
          onPressed: () {}),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Search Data...",
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white30),
      ),
      style: TextStyle(color: Colors.white, fontSize: 16.0),
      onChanged: (query) => updateSearchQuery(query),
    );
  }

  List<Widget> _buildActions() {
    if (_isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQueryController == null ||
                _searchQueryController.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: _startSearch,
      ),
    ];
  }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchQueryController.clear();
      updateSearchQuery("");
    });
  }
}