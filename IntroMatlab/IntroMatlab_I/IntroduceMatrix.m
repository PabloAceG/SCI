
%2. Function that fills the matrix with the correct dimension

function matrix = IntroduceMatrix(Dimensions)
    
 %3. The fuction ask the user about data, it can be fill in a random way
 %   if the user introduces 'r' as a parameter
    % Type of matrix fill-in
    in = input(['Write the letter r if you want to fill in the matrix '...
                'with random numbers.\n'], 's');
    % Random matrix
    if in == 'r'
        matrix = rand(Dimensions);
    else 
    % Personalised matrix
        matrix = zeros(Dimensions);
        for i = 1 : Dimensions(1)
            for j = 1 : Dimensions(2)
                matrix(i, j) = input(['Enter the value for the position'...
                                      '(' num2str(i) ',' num2str(j)     ...
                                      '):\n']);
            end
        end
    end
end