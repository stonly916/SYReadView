几种计算attributeString显示size方法的区别
//defaultAttributes：
CGFloat _fontSize = 16.f;
    _lineSpacing = 0.f;
    _paragraphSpacing = 0.f;
UIFont * font = [UIFont fontWithName:@"KaiTi_GB2312" size:_fontSize];
备注：font.leading = 2.25f
NSAttributedString  *concreteAttr = [[NSAttributedString alloc] initWithString:@"你来自哪里，什么地\n\n岁月无边，人世无际" attributes:self.defaultAttributes]

第一种
[concreteAttr boundingRectWithSize:CGSizeMake(self.view.frame.size.width-30, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size.height;
默认					：height = 3*16 + 2.25*3
_lineSpacing = 2.25f：height = 3*16 + 2.25*3
_lineSpacing = 3.25f：height = 3*16 + 3.25*2 + 2.25 (因为leading和lineSpacing会重合，这段字符串有三段，两个行间距和leading重合了，计算较大的那个)

第二种
CGRect rect = [concreteAttr boundingRectWithSize:CGSizeMake(self.view.frame.size.width-30, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
默认					：height = 3*16
_lineSpacing = 2.25f：height = 3*16 + 2.25*2
_lineSpacing = 3.25f：height = 3*16 + 3.25*2

第三种
 CGSize size = [concreteAttr size];
默认					：height = 3*16
_lineSpacing = 2.25f：height = 3*16 + 2.25*2
_lineSpacing = 3.25f：height = 3*16 + 3.25*2