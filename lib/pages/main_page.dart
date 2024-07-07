import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String currentOperationText = '';
  String previousOperationType = '+';
  String currentNumber = '';
  String previousNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF171717)
        ),
        child: Column(
              children: [
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      'Calculator',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFFFFFFFF)
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
                const Expanded(child: SizedBox()),
                previousOperation(),
                const SizedBox(
                  height: 30,
                ),
                currentOperation(),
                const SizedBox(
                  height: 20,
                ),
                buttons(),
              ],
          ),
      ),
    );
  }

  previousOperation() {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Text(
            previousNumber,
            style: const TextStyle(fontSize: 30, color: Colors.black),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }

  currentOperation() {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Text(
            currentOperationText,
            style: const TextStyle(fontSize: 45, color: Colors.black),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }

  buttons() {
    return Row(
      children: [
        const Expanded(child: SizedBox()),
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Buttons(0),
            const SizedBox(
              height: 20,
            ),
            Buttons(1),
            const SizedBox(
              height: 20,
            ),
            Buttons(2),
            const SizedBox(
              height: 20,
            ),
            Buttons(3),
            const SizedBox(
              height: 20,
            ),
            Buttons(4),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }

  List buttonsTextsList = [
    ['C', '%', 'D', '='],
    ['7', '8', '9', '×'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+'],
    ['00', '0', ',', '÷']
  ];

  List buttonColorsList = [
    [Colors.orange, Colors.orange, Colors.orange, Colors.orange],
    [const Color(0xFF1C1C1C), const Color(0xFF1C1C1C), const Color(0xFF1C1C1C), Colors.orangeAccent],
    [const Color(0xFF1C1C1C), const Color(0xFF1C1C1C), const Color(0xFF1C1C1C), Colors.orangeAccent],
    [const Color(0xFF1C1C1C), const Color(0xFF1C1C1C), const Color(0xFF1C1C1C), Colors.orangeAccent],
    [const Color(0xFF222222), const Color(0xFF1C1C1C), const Color(0xFF222222), Colors.orangeAccent]
  ];

  double textsSize = 36;

  Buttons(int rowIndex) {
    int index = rowIndex;
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {
            onClickedButton(buttonsTextsList[index][0]);
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(buttonColorsList[index][0])),
          child: Text(
            buttonsTextsList[index][0],
            style: TextStyle(fontSize: textsSize, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {
            onClickedButton(buttonsTextsList[index][1]);
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(buttonColorsList[index][1])),
          child: Text(
            buttonsTextsList[index][1],
            style: TextStyle(fontSize: textsSize, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {
            onClickedButton(buttonsTextsList[index][2]);
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(buttonColorsList[index][2])),
          child: Text(
            buttonsTextsList[index][2],
            style: TextStyle(fontSize: textsSize, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
          onPressed: () {
            onClickedButton(buttonsTextsList[index][3]);
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(buttonColorsList[index][3])),
          child: Text(
            buttonsTextsList[index][3],
            style: TextStyle(fontSize: textsSize, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  void onClickedButton(buttonsTextsList) {
    switch (buttonsTextsList) {
      case 'C':
        setState(() {
          currentOperationText = '';
          currentNumber = '';
          previousOperationType = '+';
          previousNumber = '';
        });
        break;
      case '1':
        setState(() {
          currentOperationText += '1';
          currentNumber += '1';
        });
        break;
      case '2':
        setState(() {
          currentOperationText += '2';
          currentNumber += '2';
        });
        break;
      case '3':
        setState(() {
          currentOperationText += '3';
          currentNumber += '3';
        });
        break;
      case '4':
        setState(() {
          currentOperationText += '4';
          currentNumber += '4';
        });
        break;
      case '5':
        setState(() {
          currentOperationText += '5';
          currentNumber += '5';
        });
        break;
      case '6':
        setState(() {
          currentOperationText += '6';
          currentNumber += '6';
        });
        break;
      case '7':
        setState(() {
          currentOperationText += '7';
          currentNumber += '7';
        });
        break;
      case '8':
        setState(() {
          currentOperationText += '8';
          currentNumber += '8';
        });
        break;
      case '9':
        setState(() {
          currentOperationText += '9';
          currentNumber += '9';
        });
        break;
      case '0':
        setState(() {
          currentOperationText += '0';
          currentNumber += '0';
        });
        break;
      case '00':
        setState(() {
          currentOperationText += '00';
          currentNumber += '00';
        });
        break;
      case 'D':
        deleteOneChar();
        break;
      case ',':
        setState(() {
          currentOperationText += '.';
          currentNumber += '.';
        });
        break;
      case '=':
        calculteWithPreviousOperation();
        setState(() {
          currentOperationText = previousNumber;
          currentNumber = previousNumber;
          previousNumber = '0';
          previousOperationType = '+';
        });
        break;
      case '+':
        if (isPreviousCharOperation()) {
          setState(() {
            previousOperationType = '+';
            deleteOneChar();
            currentOperationText += '+';
          });
        } else {
          if (previousNumber == '') {
            setState(() {
              previousNumber = '0';
              calculteWithPreviousOperation();
              currentOperationText += '+';
              currentNumber = '';
            });
          } else {
            setState(() {
              currentOperationText += '+';
              calculteWithPreviousOperation();
              currentNumber = '';
            });
          }
          previousOperationType = '+';
        }
        break;
      case '-':
        if (isPreviousCharOperation()) {
          setState(() {
            previousOperationType = '-';
            deleteOneChar();
            currentOperationText += '-';
          });
        } else {
          if (previousNumber == '') {
            setState(() {
              previousNumber = '0';
              calculteWithPreviousOperation();
              currentOperationText += '-';
              currentNumber = '';
            });
          } else {
            setState(() {
              currentOperationText += '-';
              calculteWithPreviousOperation();
              currentNumber = '';
            });
          }
          previousOperationType = '-';
        }
        break;
      case '÷':
        if (isPreviousCharOperation()) {
          setState(() {
            previousOperationType = '÷';
            deleteOneChar();
            currentOperationText += '÷';
          });
        } else {
          if (previousNumber == '') {
            setState(() {
              previousNumber = '0';
              calculteWithPreviousOperation();
              currentOperationText += '÷';
              currentNumber = '';
            });
          } else {
            setState(() {
              currentOperationText += '÷';
              calculteWithPreviousOperation();
              currentNumber = '';
            });
          }
          previousOperationType = '÷';
        }
        break;
      case '×':
        if (isPreviousCharOperation()) {
          setState(() {
            previousOperationType = '×';
            deleteOneChar();
            currentOperationText += '×';
          });
        } else {
          if (previousNumber == '') {
            setState(() {
              previousNumber = '0';
              calculteWithPreviousOperation();
              currentOperationText += '×';
              currentNumber = '';
            });
          } else {
            setState(() {
              currentOperationText += '×';
              calculteWithPreviousOperation();
              currentNumber = '';
            });
          }
          previousOperationType = '×';
        }
        break;
      case '%':
        if (isPreviousCharOperation()) {
          setState(() {
            previousOperationType = '%';
            deleteOneChar();
            currentOperationText += '%';
          });
        } else {
          if (previousNumber == '') {
            setState(() {
              previousNumber = '0';
              calculteWithPreviousOperation();
              currentOperationText += '%';
              currentNumber = '';
            });
          } else {
            setState(() {
              currentOperationText += '%';
              calculteWithPreviousOperation();
              currentNumber = '';
            });
          }
          previousOperationType = '%';
        }
        break;
    }
  }

  bool isPreviousCharOperation() {
    if (currentOperationText[currentOperationText.length - 1] == '+' ||
        currentOperationText[currentOperationText.length - 1] == '-' ||
        currentOperationText[currentOperationText.length - 1] == '×' ||
        currentOperationText[currentOperationText.length - 1] == '÷' ||
        currentOperationText[currentOperationText.length - 1] == '%') {
      return true;
    } else {
      return false;
    }
  }

  void calculteWithPreviousOperation() {
    switch (previousOperationType) {
      case '+':
        setState(() {
          previousNumber =
              (double.parse(previousNumber) + double.parse(currentNumber))
                  .toString();
        });
        break;
      case '-':
        setState(() {
          previousNumber =
              (double.parse(previousNumber) - double.parse(currentNumber))
                  .toString();
        });
        break;
      case '×':
        setState(() {
          previousNumber =
              (double.parse(previousNumber) * double.parse(currentNumber))
                  .toString();
        });
        break;
      case '÷':
        setState(() {
          previousNumber =
              (double.parse(previousNumber) / double.parse(currentNumber))
                  .toString();
        });
        break;
      case '%':
        setState(() {
          previousNumber =
              (double.parse(previousNumber) % double.parse(currentNumber))
                  .toString();
        });
        break;
    }
  }

  void deleteOneChar() {
    if (currentOperationText.length > 0) {
      if (currentOperationText[currentOperationText.length - 1] == '+' ||
          currentOperationText[currentOperationText.length - 1] == '-' ||
          currentOperationText[currentOperationText.length - 1] == '×' ||
          currentOperationText[currentOperationText.length - 1] == '÷' ||
          currentOperationText[currentOperationText.length - 1] == '%') {
        if (currentOperationText.length > 1) {
          for (int i = currentOperationText.length - 1; i > 0; i--) {
            if (currentOperationText[i - 1] == '+' ||
                currentOperationText[i - 1] == '-' ||
                currentOperationText[i - 1] == '×' ||
                currentOperationText[i - 1] == '÷' ||
                currentOperationText[i - 1] == '%') {
              setState(() {
                previousOperationType = currentOperationText[i];
              });
              break;
            }
          }
        } else {
          previousOperationType = '+';
        }
      }

      setState(() {
        currentOperationText = currentOperationText.substring(
            0, currentOperationText.length - 1);
      });
      if (currentNumber != '') {
        setState(() {
          currentNumber =
              currentNumber.substring(0, currentNumber.length - 1);
        });
      }
    }
  }
}
