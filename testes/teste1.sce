function func1()
    clc;
    disp('func01');
    p=get(h,'value'); // obtendo o aspecto geométrico do botão
    disp(p);
    select p
    case 1 then disp('filtro PB');
    case 2 then disp('filtro PA');        
    case 3 then disp('filtro PF');
    case 4 then disp('filtro RF');        
    end
    
    N = evstr(get(Ordem,'string'));
    disp(N+3);
    
    f11 = evstr(get(f1,'string'));
    disp(f11+99);
    
    figure;
    
endfunction

f=figure();
largura = 400;
altura = 400;

h=uicontrol(f,'style','listbox', 'position', [100 100 150 150]);
// create a listbox
set(h, 'string', "PB|PA|PF|RF");
// fill the list
set(h, 'value', [1]);

Button = uicontrol(f, "Position", [largura-100 altura-160 50 20], "Style", "pushbutton",...
                   "fontSize", 12, "String","gg", ...
                   "callback", "func1");

Ordem = uicontrol(f, "Position", [largura-50 altura-160 50 20], "Style", "edit",...
                   "fontSize", 12, "String","10");
                   
f1 = uicontrol(f, "Position", [largura-10 altura-160 50 20], "Style", "edit",...
                   "fontSize", 12, "String","0.2");
