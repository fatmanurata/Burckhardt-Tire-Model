clear; 
clc; 
close all;

% Parametreler
model_name = "burckhardt_tire_model"; % Simulink dosyanın adı
Fz = 3000;
s_vec = 0:0.01:1;
road_names = {'Dry Asphalt', 'Wet Asphalt', 'Dry Concrete', 'Snow', 'Ice'};

figure('Color', 'w'); hold on;

for i = 1:5
    road_type = i; % Her döngüde yol tipini değiştir
    fx_results = [];
    
    for s = s_vec
        out = sim(model_name, 'StopTime', '0');
        fx_results = [fx_results, out.Fx(1)];
    end
    
    plot(s_vec * 100, fx_results, 'LineWidth', 2, 'DisplayName', road_names{i});
end

grid on;
xlabel('Slip Ratio s [%]');
ylabel('Longitudinal Force F_x [N]');
title('Comparison of Tire Forces on Different Surfaces (Burckhardt Model)');
legend('Location', 'best');