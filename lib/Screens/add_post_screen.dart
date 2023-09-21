import 'dart:typed_data';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/utils/colors.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Uint8List? _file;
  final TextEditingController _descriptionController =  TextEditingController();
  void postImage(
      String uid,
      String username,
      String profImage,
      ){
    try{

    } catch(e){

    }
  }

  _selectImage(BuildContext context) async {
   return showDialog(context: context,builder:(context){
     return SimpleDialog(
       title: const Text("Create a Post"),
       children: [
         SimpleDialogOption(
           padding: const EdgeInsets.all(20),
           child: const Text('Take a photo'),
           onPressed: () async {
             Navigator.of(context).pop();
             Uint8List file = await pickImage(ImageSource.camera);
           setState(() {
             _file=file;
           }); },
         );
         SimpleDialogOption(
           padding: const EdgeInsets.all(20),
           child: const Text('Choose from gallery'),
           onPressed: () async {
             Navigator.of(context).pop();
             Uint8List file = await pickImage(ImageSource.camera);
             setState(() {
               _file=file;
             }); },
         )
       ],
     );

   });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _descriptionController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return _file==null? Center(
        child: IconButton(
          icon: const Icon(Icons.upload),
          onPressed: () => _selectImage(context),
        )
    )
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title:const Text("Post To") ,
        centerTitle: false,  //removes text from center of the screen (top-center)
        actions: [
          TextButton(onPressed: () {}, child: const Text('Post',style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),))
        ],

      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1533109721025-d1ae7ee7c1e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    hintText: 'Write a Caption',
                    border: InputBorder.none,
                  ),
                  maxLines: 8,
                ),
              ),
              SizedBox(
                height: 45,
                width: 45,
                child: AspectRatio(
                aspectRatio: 487 / 451,
                child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image:MemoryImage(_file!),/*Not able to view in-app, due to addressNotFound error (404)   Another exception was thrown: SocketException: Failed host lookup: 'images.unsplash.com' (OS Error: No address
                associated with
    hostname, errno = 7)*/
                fit: BoxFit.fill,
                alignment: FractionalOffset.topCenter,
                )
              ),
              ),
              )
              ),
             // const Divider(),

      ],
      ),
      ],
    ),
    );
  }
}

