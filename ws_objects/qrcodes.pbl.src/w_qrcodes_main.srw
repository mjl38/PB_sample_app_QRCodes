$PBExportHeader$w_qrcodes_main.srw
$PBExportComments$Generated SDI Main Window
forward
global type w_qrcodes_main from window
end type
type st_6 from statictext within w_qrcodes_main
end type
type st_5 from statictext within w_qrcodes_main
end type
type cb_clear from commandbutton within w_qrcodes_main
end type
type st_4 from statictext within w_qrcodes_main
end type
type ip_1 from inkpicture within w_qrcodes_main
end type
type cb_2 from commandbutton within w_qrcodes_main
end type
type sle_decoded from singlelineedit within w_qrcodes_main
end type
type st_3 from statictext within w_qrcodes_main
end type
type p_1 from picture within w_qrcodes_main
end type
type sle_path from singlelineedit within w_qrcodes_main
end type
type st_2 from statictext within w_qrcodes_main
end type
type st_1 from statictext within w_qrcodes_main
end type
type sle_text from singlelineedit within w_qrcodes_main
end type
type cb_1 from commandbutton within w_qrcodes_main
end type
end forward

global type w_qrcodes_main from window
integer width = 3214
integer height = 1984
boolean titlebar = true
string title = "Main Window"
string menuname = "m_qrcodes_main"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 79416533
boolean center = true
st_6 st_6
st_5 st_5
cb_clear cb_clear
st_4 st_4
ip_1 ip_1
cb_2 cb_2
sle_decoded sle_decoded
st_3 st_3
p_1 p_1
sle_path sle_path
st_2 st_2
st_1 st_1
sle_text sle_text
cb_1 cb_1
end type
global w_qrcodes_main w_qrcodes_main

type variables
// you'll probably want to change this:
string is_initialDir = "c:\temp2"
end variables

on w_qrcodes_main.create
if this.MenuName = "m_qrcodes_main" then this.MenuID = create m_qrcodes_main
this.st_6=create st_6
this.st_5=create st_5
this.cb_clear=create cb_clear
this.st_4=create st_4
this.ip_1=create ip_1
this.cb_2=create cb_2
this.sle_decoded=create sle_decoded
this.st_3=create st_3
this.p_1=create p_1
this.sle_path=create sle_path
this.st_2=create st_2
this.st_1=create st_1
this.sle_text=create sle_text
this.cb_1=create cb_1
this.Control[]={this.st_6,&
this.st_5,&
this.cb_clear,&
this.st_4,&
this.ip_1,&
this.cb_2,&
this.sle_decoded,&
this.st_3,&
this.p_1,&
this.sle_path,&
this.st_2,&
this.st_1,&
this.sle_text,&
this.cb_1}
end on

on w_qrcodes_main.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.st_6)
destroy(this.st_5)
destroy(this.cb_clear)
destroy(this.st_4)
destroy(this.ip_1)
destroy(this.cb_2)
destroy(this.sle_decoded)
destroy(this.st_3)
destroy(this.p_1)
destroy(this.sle_path)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_text)
destroy(this.cb_1)
end on

event close;// reset the image, if not it's locked by PB and you cannot write to same as previously saved filename (if you didn't change the filename)
p_1.picturename = ""
ip_1.resetpicture()

end event

type st_6 from statictext within w_qrcodes_main
integer x = 2459
integer y = 604
integer width = 402
integer height = 84
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
long textcolor = 8388608
long backcolor = 67108864
string text = "InkPicture"
alignment alignment = center!
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type st_5 from statictext within w_qrcodes_main
integer x = 1527
integer y = 604
integer width = 402
integer height = 84
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
long textcolor = 8388608
long backcolor = 67108864
string text = "Picture"
alignment alignment = center!
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type cb_clear from commandbutton within w_qrcodes_main
integer x = 745
integer y = 592
integer width = 507
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Clear pictures"
boolean flatstyle = true
end type

event clicked;// reset the image, if not it's locked by PB and you cannot write to same as previously saved filename (if you didn't change the filename)
p_1.picturename = ""
ip_1.ResetPicture()

end event

type st_4 from statictext within w_qrcodes_main
integer x = 73
integer y = 864
integer width = 1157
integer height = 476
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 255
long backcolor = 67108864
string text = "Some img formats are supported by only one of the 2 controls (inkpicutre and picture). That~'s why I try to show the image on both. For exampe Tif and Wmf formats). Even when some formats won~'t show on either, you still might be able to encode and decode the values."
boolean focusrectangle = false
end type

type ip_1 from inkpicture within w_qrcodes_main
integer x = 2203
integer y = 700
integer width = 914
integer height = 800
boolean autoerase = true
borderstyle borderstyle = stylelowered!
boolean inkenabled = false
displaysizemode picturesizemode = inkpicstretched!
end type

type cb_2 from commandbutton within w_qrcodes_main
integer x = 73
integer y = 1388
integer width = 1161
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Open QR Image and decode its text value"
end type

event clicked;//string ls_path, ls_file, ls_initialDir, ls_title
//int li_rc
//
//ls_title = "Save as ..."
//ls_initialDir = "c:\temp"
//ls_path = ls_initialDir + "\*.pdf" // adding *.pdf, will make "*.pdf" appear in the "filename", but is not necessary. The extension will be added when you close the window anyway.
//
//// passing in 32770 to get an Explorer style dialog instead of the outdated windows 3.11 version:
//li_rc = GetFileSaveName ( ls_title, ls_path, ls_file, "PDF", "PDF Files (*.pdf),*.pdf, All Files (*.*),*.*", ls_initialDir, 32770)
//

string ls_image, ls_decodedText

string ls_path, ls_title
int li_rc

ls_title = "Open QR Code Image file ..."

ls_path = is_initialDir

// reset the image, if not it's locked by PB and you cannot write to same as previously saved filename (if you didn't change the filename)
cb_clear.event clicked()

// Trying to do this, to avoid then when I click on the file list, I'm not showing files in the initialdir! (but doesn't work!!!)
ChangeDirectory(is_initialDir)

li_rc = GetFileOpenName (ls_title, ls_path, ls_image, &
								"PNG", "PNG Files (*.png),*.png,JPG Files (*.jpg),*.jpg,JPEG Files (*.jpeg),*.jpeg," + &
								"Icon Files (*.ico),*.ico,BMP Files (*.bmp),*.bmp,GIF Files (*.gif),*.gif,TIF Files (*.tif),*.tif," + &
								"TIFF Files (*.tiff),*.tiff,WMF Files (*.wmf),*.wmf,All Files (*.*),*.*", &
								is_initialDir, 32770)
if li_rc <> 1 then
	return 
end if

p_1.picturename = ls_image
ip_1.LoadPicture(ls_image)
ls_decodedText = gnv_QRCodes.of_decodeQRImageToText( ls_image)
sle_decoded.text = ls_decodedText

end event

type sle_decoded from singlelineedit within w_qrcodes_main
integer x = 73
integer y = 1620
integer width = 3008
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean displayonly = true
borderstyle borderstyle = stylelowered!
string placeholder = "Here the decoded text will be shown."
end type

type st_3 from statictext within w_qrcodes_main
integer x = 73
integer y = 1532
integer width = 1175
integer height = 84
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Decoded Text value:"
boolean focusrectangle = false
end type

type p_1 from picture within w_qrcodes_main
integer x = 1271
integer y = 700
integer width = 914
integer height = 800
boolean originalsize = true
string picturename = "C:\temp2\y.wmf"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
boolean map3dcolors = true
end type

type sle_path from singlelineedit within w_qrcodes_main
integer x = 73
integer y = 452
integer width = 3008
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string placeholder = "For example C:\temp2\miQRCode.png"
end type

type st_2 from statictext within w_qrcodes_main
integer x = 73
integer y = 300
integer width = 1934
integer height = 144
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Path and filename for the save of the QRCode Image: (it has to end on *.jpg, *.jpeg, *.png, *.gif, *.bmp, *.ico, *.tiff, *.tif, *.wmf, etc.):"
boolean focusrectangle = false
end type

type st_1 from statictext within w_qrcodes_main
integer x = 73
integer y = 20
integer width = 1253
integer height = 84
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Text that you want to save as QRCode Image:"
boolean focusrectangle = false
end type

type sle_text from singlelineedit within w_qrcodes_main
integer x = 73
integer y = 108
integer width = 3008
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string placeholder = "Hello my name is Miguelito!"
end type

type cb_1 from commandbutton within w_qrcodes_main
integer x = 73
integer y = 592
integer width = 654
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Save text as QR Image"
end type

event clicked;string ls_returnValue
is_initialDir = mid(sle_path.text, 1, lastpos(sle_path.text, '\'))

// reset the image, if not it's locked by PB and you cannot write to same as previously saved filename (if you didn't change the filename)
cb_clear.event clicked()

ls_returnValue = gnv_QRCodes.of_encodeTextToQRImage( sle_text.text , sle_path.text )
p_1.picturename = sle_path.text
ip_1.LoadPicture(sle_path.text)
ls_returnValue = ls_returnValue
end event

