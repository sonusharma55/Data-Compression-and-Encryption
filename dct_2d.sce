clc
clear
fx  = input("Enter data sequence : f(x) = ");
N = 4;
T = [];
for u = 1:N
    for x = 1:N
        if u-1 == 0
            alpha = sqrt(1/N);
        else
            alpha = sqrt(2/N);
        end
        T(u,x) = alpha * cos((2*(x-1)+1)*%pi*(u-1)/(2*N));
    end
end

Fu = T*fx*T';
printf("\nDCT transformstion matrix is T = \n");
printf("%f %f %f %f\n", T);
printf("\nDCT of given sequence is F(u) = \n");
printf("%f %f %f %f\n", Fu);
