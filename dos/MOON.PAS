program moon;
uses
    crt,graph;
var
   driver,mode,level,x,y,vy,vx,rnx,rny,rvx,rvy,rcx,rcy,rwx,rwy: integer;
   answer: string;
label
     exit,pvt,vin,fail,proverka,bgn,vb;

begin
     vb:
     textcolor(13);
     write('������ �஢��� ᫮����� (1,2,3,4): ');
     readln(level);
     bgn:
     driver:=detect;
     initgraph(driver,mode,'d:\bp7.0\bgi');
     x:=320;
     y:=0;
     vx:=513;
     vy:=427;
     rnx:=33;
     rny:=405;
     rvx:=30;
     rvy:=20;
     rcx:=320;
     rcy:=390;
     rwx:=30;
     rwy:=20;
     pvt:
     repeat
           {������ �५��}
           setcolor(11);
           setfillstyle(1,11);
           setlinestyle(0,1,1);
           fillellipse(x,y,20,7);   {�����}
           line(x,y+8,x,y+16);      {� �����}
           line(x-7,y+8,x-13,y+16); {� �����}
           line(x+7,y+8,x+13,y+16); {� �����}
           {�㭠}
           line(0,430,640,430);     {�㭠}
           {�⠭��}
           setcolor(15);
           line(540,400,600,400);   {� �����}
           line(540,400,510,430);   {� �����}
           line(600,400,630,430);   {� �����}
           arc(506,420,250,20,10);  {��⥭�}
           line(513,427,508,422);   {����窠 � ��⥭�}
           line(vx,vy,vx-5,vy-5);   {�����}
           if vy<0 then
              begin
                   vy:=427;
                   vx:=513;
              end;
           vx:=vx-20;
           vy:=vy-20;
           {� ��誠}
           setlinestyle(0,0,3);
           setcolor(4);
           setfillstyle(1,4);
           line(15,420,30,420);  {��ਧ��⠫쭠� �����}
           line(15,420,6,429);   {� �����}
           line(30,420,39,429);  {� �����}
           bar(21,420,23,410);   {��ঠ⥫�}
           line(11,415,33,405);  {��誠}
           line(11,415,9,412);   {� ���� �����ன��}
           line(9,412,20,406);   {� ���� �����ன��}
           line(20,406,26,408);  {� ���� �����ன��}
           {ࠪ�� � ��誨}
           setcolor(14);
           rnx:=rnx+5;
           if rny>y then rny:=rny-2
           else rny:=rny+2;
           if rnx>640 then
              begin
                   rnx:=33;
                   rny:=405;
              end;
           line(rnx,rny,rnx+2,rny-1);
           {� ��誠}
           if (level=3) or (level=4) then
              begin
                   setcolor(4);
                   arc(640,0,180,270,15);  {�᭮����� ��誨}
                   line(628,12,620,20);    {��ঠ⥫�}
                   line(630,20,610,20);    {��誠}
                   line(630,20,630,24);    {� ���� �����ன��}
                   line(630,24,620,24);    {� ���� �����ன��}
                   line(620,24,616,20);    {� ���� �����ன��}
                   {ࠪ�� � ��誨}
                   setcolor(14);
                   rvx:=rvx-5;
                   if rvy>y then rvy:=rvy-2
                   else rvy:=rvy+2;
                   if rvx=0 then
                      begin
                           rvx:=610;
                           rvy:=20;
                      end;
                   line(rvx,rvy,rvx+2,rvy-1);
              end;
           {� ��誠}
           if level=4 then
              begin
                   setcolor(4);
                   arc(0,0,270,0,15);  {�᭮����� ��誨}
                   line(12,12,20,20);    {��ঠ⥫�}
                   line(10,20,30,20);    {��誠}
                   line(10,20,10,24);    {� ���� �����ன��}
                   line(10,24,20,24);    {� ���� �����ன��}
                   line(20,24,24,20);    {� ���� �����ன��}
                   {ࠪ�� � ��誨}
                   setcolor(14);
                   rwx:=rwx+5;
                   if rwy>y then rwy:=rwy-2
                   else rwy:=rwy+2;
                   if rwx=640 then
                      begin
                           rwx:=30;
                           rwy:=20;
                      end;
                   line(rwx,rwy,rwx+2,rwy-1);
              end;
           {�� ��誠}
           if (level=2) or (level=3) or (level=4) then
              begin
                   setcolor(4);
                   arc(320,429,0,180,15);  {�᭮����� ��誨}
                   line(320,414,320,390);  {��誠}
                   line(316,410,324,410);  {�᭠����� �����ன��}
                   line(316,410,316,400);  {�� ���� �����ன��}
                   line(324,410,324,400);  {�� ���� �����ன��}
                   line(316,400,320,396);  {�� ���� �����ன��}
                   line(324,400,320,396);  {�� ���� �����ன��}
                   {ࠪ�� � ��誨}
                   setcolor(14);
                   rcy:=rcy-5;
                   if rcx>x then rcx:=rcx-2
                   else rcx:=rcx+2;
                   if rcy<0 then
                      begin
                           rcx:=320;
                           rcy:=390;
                      end;
                   line(rcx,rcy,rcx+2,rcy-1);
              end;
           delay(150);
           cleardevice;
           {�᫮��� ������}
           if (y=384) and (x>550) and (x<590) then goto vin
           else if y>414 then goto fail;
           if (rny>=y-7) and (rny<=y+7) and (rnx>=x-20) and (rnx<=x+20) then goto fail;
           if (rvy>=y-7) and (rvy<=y+7) and (rvx>=x-20) and (rvx<=x+20) then goto fail;
           if (rcy>=y-7) and (rcy<=y+7) and (rcx>=x-20) and (rcx<=x+20) then goto fail;
           if (rwy>=y-7) and (rwy<=y+7) and (rwx>=x-20) and (rwx<=x+20) then goto fail;
     until keypressed;
     {�ࠢ�����}
     case readkey of
     #46: begin
               closegraph;
               goto vb;
          end;
     #48: begin
               closegraph;
               goto bgn;
          end;
     #49: begin
               y:=y+3;
               x:=x-3;
          end;
     #50: y:=y+3;
     #51: begin
               y:=y+3;
               x:=x+3;
          end;
     #52: x:=x-3;
     #53: goto exit;
     #54: x:=x+3;
     #55: begin
               y:=y-3;
               x:=x-3;
          end;
     #56: y:=y-3;
     #57: begin
               y:=y-3;
               x:=x+3;
          end;
     end;
     goto pvt;
     vin:
     closegraph;
     textcolor(123);
     write('����������! �� �멣ࠫ�! ��ࠥ� ��� (y/n)? ');
     goto proverka;
     fail:
     closegraph;
     textcolor(4);
     write('��-��-�� �� ��������!!! ��ࠥ� ��� (y/n)? ');
     proverka:
     readln(answer);
     if answer = 'y' then goto bgn;
     if answer = 'n' then goto exit
     else
         begin
              write('����� ᢮� �⢥� (y/n): ');
              goto proverka;
         end;
     exit:
     closegraph;
end.