$PBExportHeader$qrcodes.sra
$PBExportComments$Generated SDI Application Object
forward
global type qrcodes from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
nvo_qrEncodeDecode gnv_QRCodes
end variables
global type qrcodes from application
string appname = "qrcodes"
string themepath = "D:\Appeon2019R2\PowerBuilder 19.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditx64type = 3
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "19.2.0.2703"
end type
global qrcodes qrcodes

on qrcodes.create
appname="qrcodes"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on qrcodes.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script
//*           1) Opens Main window
//*-----------------------------------------------------------------*/

gnv_qrcodes = create nvo_qrEncodeDecode

Open ( w_qrcodes_main )
end event

event close;if isvalid(gnv_QRCodes) then
	destroy gnv_QRCodes
end if

end event

