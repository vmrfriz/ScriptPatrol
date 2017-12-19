/**
*
**************************
*  ��������� �����������
**************************
*
* [main.ahk]                        !!! ���������
* |
* |---[config.ahk]                      ���������� � ������, ������ ���������
* |
* |---[autoexec.ahk]                    ����������� ���� �������, ������� � �����������
* |   |
* |   |---[functions/autoexec.ahk]      �������� ������ ����� | ����������� ���� ������ � �����
* |   |   |---[helpers.ahk]
* |   |   +---[...]
* |   |
* |   |---[class/autoexec.ahk]          �������� ������ ����� | ����������� ���� ������ � �����
* |   |   |---[Debug.class.ahk]
* |   |   +---[...]
* |   |
* |   +---[gui/autoexec.ahk]            �������� ������ ����� | ����������� ���� ������ � �����
* |       |---[Gui.class.ahk]
* |       +---[...]
* |
* +---[router.ahk]                      ����� ������� ������� �� �������
*
* [img]                                 ����� � ������������� ��� ����������
*
*/
#NoEnv                            ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn                             ; Enable warnings to assist with detecting common errors.
SendMode Input                    ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%       ; Ensures a consistent starting directory.

; Include config
#include config.ahk

; Include all classes and functions
#include autoexec.ahk

; Include callback router
#include router.ahk

; Include timers
#include timers.ahk

; Include hotkeys
#include hotkeys.ahk
