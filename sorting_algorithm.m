% Сортировка методом пузырька на MATLAB

% Исходный массив
nums = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];

disp('Before sorting:');
disp(nums);

% Реализация пузырьковой сортировки
n = numel(nums);
for i = 1:n
    swapped = false;
    for j = 1:n-i
        if nums(j) > nums(j+1)
            % Обмен элементов
            temp = nums(j);
            nums(j) = nums(j+1);
            nums(j+1) = temp;
            swapped = true;
        end
    end
    % Если не было обменов, значит массив уже отсортирован
    if ~swapped
        break;
    end
end

disp('After sorting:');
disp(nums);