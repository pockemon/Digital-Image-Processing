%% MANISH KUMAR SHARMA, cdac-noida, 2010

%%converting a color image into a gray lavel & comparision of pixel 
%%value getting in the different type of conversion factor

i=imread('manish.jpg');  % Reading the stored image manish.jpg(it can be in any formate )
[row col byt]=size(i);
R=i(:,:,1);              % red plane
G=i(:,:,2);              % green plane
B=i(:,:,3);              % blue plane
R=double(R)
G=double(G)
B=double(B)
for x=1:1:row
    for y=1:1:col
        averagegray(x,y)=(R(x,y)+G(x,y)+B(x,y))/3;   % method1
      
        exactgray(x,y)=0.3.*R(x,y)+0.59.*G(x,y)+0.11.*B(x,y); % method2
    end
end
    figure; imshow(uint8(i))
    figure; imshow(uint8(averagegray))
    figure; imshow(uint8(exactgray))
    %% Method3-- Using inbuilt commond for gray conversion
    rgb2gray(i);
    %% for coputing the value, leave the semicolon of method1, method2 and
    %% method3 and see the output, method2 and method3's function is same but method1
    %% is diffenent