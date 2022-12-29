_FullScreen
Dim BinaryInput As String
Dim DecimalOutput As Integer
Do
    Cls
    Print "Input > "; BinaryInput
    Print "("; 1; "/ 8 )"
    For A = 1 To 8
        Do: _Limit 1000: Loop Until _KeyDown(49) Or _KeyDown(48)
        If _KeyDown(49) Then: Do: _Limit 100: Loop Until Not _KeyDown(49): BinaryInput = BinaryInput + "1"
        If _KeyDown(48) Then: Do: _Limit 100: Loop Until Not _KeyDown(48): BinaryInput = BinaryInput + "0"
        Cls
        Print "Input > "; BinaryInput
        Print "("; A; "/ 8 )"
        DecimalOutput = DecimalOutput + ((Val(Mid$(BinaryInput, A, 1))) * (2 ^ (8 - A)))
    Next A
    Cls
    Print "Binary Input > "; BinaryInput
    Print "Decimal Output > "; DecimalOutput
    Print "[E] = Continu[E]"
    Print "[X] = E[X]it"
    Do: Loop Until _KeyDown(101) Or _KeyDown(120)
    BinaryInput = ""
    DecimalOutput = 0
Loop Until _KeyDown(120)
Do: _Limit 100: Loop Until Not _KeyDown(120)
Cls
System

