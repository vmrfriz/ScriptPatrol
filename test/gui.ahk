#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, Main: New,, ScriptPatrol 2.0
Gui, Main: Margin, 10, 10
; �������� �������
Gui, Main: Add, Text, xm, ��������:
Gui, Main: Add, Edit, x70 yp-3,
; ��� �������
Gui, Main: Add, Text, xm, ���:
Gui, Main: Add, DropDownList, x70 yp-3 Choose1, ����������|����|�����|����
; �������
Gui, Main: Add, Text, xm, �������:
Gui, Main: Add, Button, x70 yp-3, ��������� �������
; C������
Gui, Main: Add, Text, xm, �������:
Gui, Main: Add, Hotkey, x70 yp-3


;Gui, Main: Add, Edit,, 222

Gui, Main: Show, xCenter yCenter w300 h200

Ctrl & R::Reload