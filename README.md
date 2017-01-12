{\rtf1\ansi\ansicpg936\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fnil\fcharset134 PingFangSC-Regular;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red255\green0\blue0;\red65\green182\blue69;\red26\green26\blue26;
\red131\green192\blue87;\red0\green160\blue190;\red120\green109\blue196;\red219\green44\blue56;\red178\green24\blue137;
\red198\green124\blue72;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab642
\pard\tx642\pardeftab642\pardirnatural\qc\partightenfactor0

\f0\fs36 \cf2 \CocoaLigature0 \'bc\'b8\'d6\'d6\'bc\'c6\'cb\'e3attributeString\'cf\'d4\'ca\'besize\'b7\'bd\'b7\'a8\'b5\'c4\'c7\'f8\'b1\'f0\
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0
\cf3 \cb4 //
\f1\fs26 \cf5 defaultAttributes
\f0\fs36 \cf3 \'a3\'ba\cf2 \
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0

\f1\fs26 \cf6 CGFloat\cf1  _fontSize = \cf7 16.f\cf1 ;\
    \cf5 _lineSpacing\cf1  = \cf7 0.f\cf1 ;\
    \cf5 _paragraphSpacing\cf1  = \cf7 0.f\cf1 ;\
\cf6 UIFont\cf1  * font = [\cf6 UIFont\cf1  \cf6 fontWithName\cf1 :\cf8 @"KaiTi_GB2312"\cf1  \cf6 size\cf1 :_fontSize];\

\f0 \'b1\'b8\'d7\'a2\'a3\'ba
\f1 font.leading = 2.25f\
\cf6 NSAttributedString  *\cf1 concreteAttr = [[\cf6 NSAttributedString\cf1  \cf6 alloc\cf1 ] \cf6 initWithString\cf1 :\cf8 @"
\f0 \'c4\'e3\'c0\'b4\'d7\'d4\'c4\'c4\'c0\'ef\'a3\'ac\'ca\'b2\'c3\'b4\'b5\'d8
\f1 \\n\\n
\f0 \'cb\'ea\'d4\'c2\'ce\'de\'b1\'df\'a3\'ac\'c8\'cb\'ca\'c0\'ce\'de\'bc\'ca
\f1 "\cf1  \cf6 attributes\cf1 :\cf9 self\cf1 .\cf5 defaultAttributes\cf1 ]\
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0
\cf1 \cb1 \

\f0 \cf2 \cb4 \'b5\'da\'d2\'bb\'d6\'d6
\f1 \cf1 \
[concreteAttr \cf6 boundingRectWithSize\cf1 :\cf6 CGSizeMake\cf1 (\cf9 self\cf1 .\cf6 view\cf1 .\cf6 frame\cf1 .\cf6 size\cf1 .\cf6 width\cf1 -\cf7 30\cf1 , \cf10 CGFLOAT_MAX\cf1 ) \cf6 options\cf1 :\cf6 NSStringDrawingUsesLineFragmentOrigin\cf1  | \cf6 NSStringDrawingUsesFontLeading\cf1  \cf6 context\cf1 :\cf9 nil\cf1 ].size.height;\
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0

\f0 \cf1 \'c4\'ac\'c8\'cf					\'a3\'baheight = 3*16 + 2.25*3
\f1 \
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0
\cf5 _lineSpacing\cf1  = \cf7 2.25f
\f0 \cf1 \'a3\'baheight = 3*16 + 2.25*3\

\f1 \cf5 _lineSpacing\cf1  = \cf7 3.25f
\f0 \cf1 \'a3\'baheight = 3*16 + 3.25*2 + 2.25 (\'d2\'f2\'ce\'aaleading\'ba\'cdlineSpacing\'bb\'e1\'d6\'d8\'ba\'cf\'a3\'ac\'d5\'e2\'b6\'ce\'d7\'d6\'b7\'fb\'b4\'ae\'d3\'d0\'c8\'fd\'b6\'ce\'a3\'ac\'c1\'bd\'b8\'f6\'d0\'d0\'bc\'e4\'be\'e0\'ba\'cdleading\'d6\'d8\'ba\'cf\'c1\'cb\'a3\'ac\'bc\'c6\'cb\'e3\'bd\'cf\'b4\'f3\'b5\'c4\'c4\'c7\'b8\'f6)
\f1 \
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0

\f0 \cf2 \
\'b5\'da\'b6\'fe\'d6\'d6
\f1 \cf1 \
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0
\cf6 CGRect\cf1  rect = [concreteAttr \cf6 boundingRectWithSize\cf1 :\cf6 CGSizeMake\cf1 (\cf9 self\cf1 .\cf6 view\cf1 .\cf6 frame\cf1 .\cf6 size\cf1 .\cf6 width\cf1 -\cf7 30\cf1 , \cf10 CGFLOAT_MAX\cf1 ) \cf6 options\cf1 :\cf6 NSStringDrawingUsesLineFragmentOrigin\cf1  \cf6 context\cf1 :\cf9 nil\cf1 ];\

\f0 \'c4\'ac\'c8\'cf					\'a3\'baheight = 3*16
\f1 \
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0
\cf5 _lineSpacing\cf1  = \cf7 2.25f
\f0 \cf1 \'a3\'baheight = 3*16 + 2.25*2\

\f1 \cf5 _lineSpacing\cf1  = \cf7 3.25f
\f0 \cf1 \'a3\'baheight = 3*16 + 3.25*2
\f1 \
\
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0

\f0 \cf2 \'b5\'da\'c8\'fd\'d6\'d6
\f1 \cf1 \
 \cf6 CGSize\cf1  size = [concreteAttr \cf6 size\cf1 ];\
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0

\f0 \cf1 \'c4\'ac\'c8\'cf					\'a3\'baheight = 3*16
\f1 \
\pard\tx642\pardeftab642\pardirnatural\partightenfactor0
\cf5 _lineSpacing\cf1  = \cf7 2.25f
\f0 \cf1 \'a3\'baheight = 3*16 + 2.25*2\

\f1 \cf5 _lineSpacing\cf1  = \cf7 3.25f
\f0 \cf1 \'a3\'baheight = 3*16 + 3.25*2}