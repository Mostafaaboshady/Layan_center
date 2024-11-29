
import 'package:flutter/material.dart';
import 'package:layan_center/core/utils/constant.dart';

class PatientFormDialog extends StatefulWidget {
  @override
  _PatientFormDialogState createState() => _PatientFormDialogState();
}

class _PatientFormDialogState extends State<PatientFormDialog> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {
    'ID': '',
    'اسم المريض ': '',
    'السن': '',
    'الطول': '', // Default value
    'الوزن': '', // Default value
    'الهاتف': '',
    'العنوان': '',
  };

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pop(); // Close the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: 700,
            height: 500,
            child: AlertDialog(
              title: Text('معلومات المريض'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: _formData.entries.map((entry) {
                    return Text('${entry.key}: ${entry.value}');
                  }).toList(),
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('حفظ'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 900,
          height: 720,
          child: AlertDialog(
            title: Text('إضافة حالة جديدة'),
            content: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListBody(
                        children: <Widget>[
                          ..._formData.keys.where((key) => key != 'النوع').map((key) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: key,
                                  border: OutlineInputBorder(),
                                ),
                                onSaved: (value) {
                                  _formData[key] = value!;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'هذا الحقل مطلوب';
                                  }
                                  return null;
                                },
                              ),
                            );
                          }).toList(),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 300,
                              width: 400,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(' : النوع ', style: TextStyle(fontSize: 16)),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Radio<String>(
                                            value: 'ذكر',
                                            groupValue: _formData['النوع'],
                                            onChanged: (value) {
                                              setState(() {
                                                _formData['النوع'] = value!;
                                              });
                                            },
                                          ),
                                          Text('ذكر'),
                                        ],
                                      ),
                                      SizedBox(width: 30), // إضافة مسافة بين الخيارات
                                      Row(
                                        children: [
                                          Radio<String>(
                                            value: 'أنثى',
                                            groupValue: _formData['النوع'],
                                            onChanged: (value) {
                                              setState(() {
                                                _formData['النوع'] = value!;
                                              });
                                            },
                                          ),
                                          Text('أنثى'),
                                        ],
                                      ),
                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Image( fit: BoxFit.fill ,image: AssetImage(persone)),
                      ),

                  ],
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('إلغاء'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(width: 640,),
              TextButton(
                child: Text('حفظ'),
                onPressed: _submitForm,
              ),
            ],
          ),
        ),

      ],
    );
  }
}
