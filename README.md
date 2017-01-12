#几种计算attributeString显示size方法的区别
<pre><code>
//defaultAttributes：
CGFloat _fontSize = 16.f;
    _lineSpacing = 0.f;
    _paragraphSpacing = 0.f;
UIFont * font = [UIFont fontWithName:@"KaiTi_GB2312" size:_fontSize];
//font.leading = 2.25f
NSAttributedString  *concreteAttr = [[NSAttributedString alloc] initWithString:@"你来自哪里，什么地\n\n岁月无边，人世无际" attributes:self.defaultAttributes];
</code></pre>

#第一种
<pre><code>
[concreteAttr boundingRectWithSize:CGSizeMake(self.view.frame.size.width-30, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size.height;
</code></pre>
<p>默认					：
height = 3 * 16 + 2.25 * 3
<p> _lineSpacing = 2.25f：
height = 3 * 16 + 2.25 * 3
<p>_lineSpacing = 3.25f：height = 3 * 16 + 3.25 * 2 + 2.25 <br>(因为leading和lineSpacing会重合，这段字符串有三段，两个行间距和leading重合了，计算较大的那个)

#第二种
<pre><code>
CGRect rect = [concreteAttr boundingRectWithSize:CGSizeMake(self.view.frame.size.width-30, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
</code></pre>
 <p> 默认					：height = 3 * 16
 <p>_lineSpacing = 2.25f：height = 3 * 16 + 2.25 * 2
 <p>_lineSpacing = 3.25f：height = 3 * 16 + 3.25 * 2

#第三种
<pre><code>
 CGSize size = [concreteAttr size];
 </code></pre>
  <p>默认					：height = 3 * 16
  <p>_lineSpacing = 2.25f：height = 3 * 16 + 2.25 * 2
  <p>_lineSpacing = 3.25f：height = 3 * 16 + 3.25 * 2
