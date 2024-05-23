for i = 1:1:10
    
   x = i*ones(mstr(i),1) ; 
   y = Astr(1:mstr(i),1,i) ;
   scatter(x,y,'d','MarkerEdgeColor',[0 0.4470 0.7410],...
              'LineWidth',1) ;
   hold on
    
    
end

% 
yh1 = yline(142,'--r',{'142'})
yh1.FontSize = 16;
% 
hold on
% 
yh2 = yline(464,'--r',{'464'})
yh2.FontSize = 16;

ax = gca;
ax.FontSize = 14; 
xlabel('Trial number ','fontsize',16)
ylabel('Chest number of candidates','fontsize',16)
xlim([1 10])


bar(mstr(1:10))
xlabel('Trial number','fontsize',16)
ylabel('Number of candidates at beginning','fontsize',16)