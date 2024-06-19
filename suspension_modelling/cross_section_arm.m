function cross_section_coordinates = cross_section_arm(l,w,r)

    A = linspace(-pi/2, pi/2, 10)';
    B = linspace(pi/2, 3*pi/2, 10)';
    C = linspace(3*pi/2, -pi/2, 20)';

    csRight = [l/2 + w/2*cos(A) w/2*sin(A)];
    csLeft = [-l/2 + w/2*cos(B) w/2*sin(B)];
    csLeftHole = [-l/2 + r*cos(C) r*sin(C)];
    csRightHole = [+l/2 + r*cos(C) r*sin(C)];
    csConnLine = [-l/2 -w/2; +l/2 -w/2];

    cross_section_coordinates = [csRight; csLeft; csLeftHole; csConnLine; csRightHole];
end

%Run command:>>cross_section_coordinates_arm1 = cross_section_arm(arm1_l,arm1_w,arm1_r)
%Run command:>>cross_section_coordinates_arm2 = cross_section_arm(arm2_l,arm2_w,arm2_r)

%In order to see the cross section run the command:
%>>figure; hold on; axis equal;
%plot(cross_section_coordinates(:,1), cross_section_coordinates(:,2), 'Color', [0.6 0.6 0.6], 'Marker', '.',...
%'MarkerSize', 9, 'MarkerEdgeColor', [1 0 0]);