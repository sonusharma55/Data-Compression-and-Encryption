n = input("Enter value of n = ");
for i = 1:n-1
    for j = 1:n-1
        a(i, j) = i^j;
    end
end
printf("Power of integers < n ")
disp(a);

for i = 1:n-1
    for j = 1:n-1
        a(i, j) = pmodulo(a(i, j), n);
    end
end
printf("\nPower of integers < n (mod n)")
disp(a);

for i = 1:n-1
    for j = 1:n-1
        if a(i, j) == 1
            printf("order of %d is %d \n", i, j);
            break;
        end
    end
end

printf("\nPrimitive roots of %d are : \n", n)
for i = 1:n-1
    for j = 1:n-1
        if (a(i, j) == 1)
            break;
        end
    end
    if  (j == n-1)
        disp(i);
    end
    
end
