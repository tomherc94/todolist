import 'package:flutter/material.dart';

Row gerarTask(String taskName){
  return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.black38,),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  child: Align(alignment: Alignment.centerLeft, child: Text(taskName)),
                ),
              ),
              const ElevatedButton(
                          
                          onPressed: null,
                          child: Text('Finalizar'),
                        ),
            ],
          );

}