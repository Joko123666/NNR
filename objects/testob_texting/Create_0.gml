
depth = -999;

textbox_width = 200;
textbox_height = 64;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
textbox_spr = UI_textbox;
textbox_img = 0;
textbox_img_spd = 1;


//the text
page = 0;
page_num = 0;
text[0] = "이 텍스트는 첫번째 줄입니다";
text[1] = "이 텍스트는 두번째 줄이며 길이가 약간 더 길게 차지합니다";
text[2] = "이 텍스트는 세번째 줄입니다 길이를 더 길게 해야하기 때문에 아무 말이나 집어 넣어서 길이를 늘리겠습니다";
text[3] = "이 텍스트는 네번째 줄입니다, 네번째 네번째 일부러 일부러 매번 게임 저장 불러오기 게임시작 게임종료 아무말 대잔치 이렇게 저렇게 텍스트 길이 테스트";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;

scr[0] = 0;

var file = file_text_open_read(working_directory + "text_book.txt");
for (var i = 0; i < 20; i+=1)
{
    text[i] = file_text_read_string(file);
    file_text_readln(file);
}
file_text_close(file);