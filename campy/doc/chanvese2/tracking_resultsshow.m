function tracking_resultsshow(phi1,phi2,correspondence,edge_threshold1,edge_threshold2,neighbor_threshold,cellarea_threshold1,cellarea_threshold2)
[inde1,inde2]=find(correspondence==1);
[m3,n3]=size(inde1);
%%
[inde3,inde4]=find(correspondence==2);
[m4,n4]=size(inde3);


cord1=getcentroid_f(phi1,edge_threshold1,cellarea_threshold1);
for i1=1:m3
    c=int2str(i1);
    text(cord1(inde1(i1)).Centroid(1)-8,cord1(inde1(i1)).Centroid(2)+2,c,'Color',[1,1,1],'FontSize',15);
end

for i2=1:m4
   % c=int2str(i2);
   % text(cord1(inde3(i2)).Centroid(1)-4,cord1(inde3(i2)).Centroid(2)-4,c,'Color',[0,1,1],'FontSize',8);
     plot(cord1(inde3(i2)).Centroid(1),cord1(inde3(i2)).Centroid(2),'Color',[1,0,1],'Marker','.','MarkerSize',30);
end

ImgPlot1 = frame2im(getframe);
imwrite(ImgPlot1,sprintf('im100.tif'));

cord2=getcentroid_f(phi2,edge_threshold2,cellarea_threshold2);
for i3=1:m3
    c=int2str(i3);
    text(cord2(inde2(i3)).Centroid(1)-8,cord2(inde2(i3)).Centroid(2)+2,c,'Color',[1,1,1],'FontSize',15);
    
end

for i4=1:m4
    %c=int2str(i4);
    %text(cord2(inde4(i4)).Centroid(1)-4,cord2(inde4(i4)).Centroid(2)-4,c,'Color',[0,1,1],'FontSize',8);
     plot(cord2(inde4(i4)).Centroid(1),cord2(inde4(i4)).Centroid(2),'Color',[1,0,1],'Marker','.','MarkerSize',30);
end

ImgPlot2 = frame2im(getframe);
imwrite(ImgPlot2,sprintf('im200.tif'));


