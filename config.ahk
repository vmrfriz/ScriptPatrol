; ������� ������
global program_version := 2.0

; ������� build ��� ��������
global program_build   := 1

; ��� ������
global user_nickname ; ( getUsername() ? getUsername() : "none" )
RegRead, user_nickname, HKEY_CURRENT_USER, Software\SAMP, PlayerName
if (ErrorLevel == 1) {
	user_nickname := false
}

; ������� ������
global user_server     := false ; ( getServerIP() != -1 ? (getServerIP() . ":" . getServerPort()) : user_server ? user_server : "none" )