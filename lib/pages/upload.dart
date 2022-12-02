import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:gracia/pages/submission.dart';
class upload extends StatefulWidget {
  const upload({Key? key}) : super(key: key);
  static const String id = 'upload';
  @override
  State<upload> createState() => _uploadState();
}

class _uploadState extends State<upload> {
  List<PlatformFile>? _files;


  void _uploadfiles() async{
    var uri =Uri.parse('localhost:8080/test');
    var request = http.MultipartRequest('POST',uri);
    request.files.add(await http.MultipartFile.fromPath('file',_files!.first.path.toString()));
    var response = await request.send();
    if(response.statusCode==200){
      print('file uploaded');
    }
    else
      {
        print('something went wrong');
      }
  }
  void _openFileexp() async{
    _files = (await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: false,
      allowedExtensions: null,
    ))!.files;
    print('loaded files path:${_files!.first.path}');
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('upload',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('project type:',style: TextStyle(fontSize: 10),),
            TextFormField()
                      ,SizedBox(height:10,),
            Text('boundary details:',style: TextStyle(fontSize: 10),),
            ElevatedButton(onPressed:_openFileexp, child: Text('upload file')),
            Text('project start date',style: TextStyle(fontSize: 10),),


            TextFormField(),
            Text('cerficate from local body'
                '',style: TextStyle(fontSize: 10),),
            ElevatedButton(onPressed:_openFileexp, child: Text('upload file')),

            ElevatedButton(onPressed:_openFileexp, child: Text('open file explorer')),
            SizedBox(height:10,),
            ElevatedButton(onPressed:_uploadfiles, child: Text('Upload file')),

            SizedBox(height: 50,),
            ElevatedButton(onPressed:(){Navigator.pushNamed(context, subm.id);}, child: Text('submitt'))

          ],
        ),
      )
    ));
  }
}
