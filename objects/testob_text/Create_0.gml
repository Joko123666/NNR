
scr[0] = 0;

if !directory_exists(working_directory + "textfi")
{
    directory_create(working_directory + "textfi");
}

var file = file_text_open_read(working_directory + "text_book.txt");
for (var i = 0; i < 10; i++;)
{
    scr[i] = file_text_read_real(file);
    file_text_readln(file);
    scr_name[i] = file_text_read_string(file);
    file_text_readln(file);
}
file_text_close(file);
