clc;
clear;
close;

//janelas gráficas do Scilab

f1 = figure();

altura = 400;
largura = 420;

f1.position = [ 50 50 largura altura];
f1.figure_name = "Janela Gráfica do Scilab";

//entrada dos dados

box = uicontrol(f1, "position", [50 altura-30 70 20], "style", "text",...
                "fontSize", 12, "String", "entrada de texto:",...
                "BackgroundColor", [0.1 0.5 0.5]);

texto = uicontrol(f1, "position", [120 altura-30 200 20], "style", "edit",...
                "fontSize", 12, "String", "entrada de texto:",...
                "BackgroundColor", [1 1 1]);
                
Button = uicontrol(f1, "Position", [largura-100 altura-30 100 20], "Style", "pushbutton",...
                   "fontSize", 12, "String","Pesquisar", ...
                   "callback", "Pesquisar()");
