clc
clear
p = input("Enter probabilities of symbol, p = ");

t = 0;
for i = 1:length(p)
    c(i) = t + p(i);
    t = c(i);
end
printf("\nCDF of symbols ");
disp(c)

s = input("Enter sequence of symbol to be encoded, s = ");

x = [0;c];
for i = 1:length(s)
    l = x(s(i));
    u = x(s(i) + 1);
    l1 = l + (u - l)*c(1);
    u1 = l + (u - l)*c(2);
    x = [l l1 u1 u];
end
Tag = (l + u)/2
printf("Tag value, Tag = %f", Tag);
