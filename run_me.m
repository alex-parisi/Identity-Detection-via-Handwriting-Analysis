clear all;
close all;
clc;

% Load training data %
load('testdata_proc');

% K-Nearest Neighbor %

    fprintf('Begin classification using KNN. \n');

    % Setup classifiers %
    y = [zeros(1, 100), ones(1, 100)]';
    knn_class = cell(1, 52);

    % Train KNN %
    for (i = 1:52)
        x = [real(testdata{1, i}), real(testdata{2, i})]';
        knn_class{1, i} = fitcknn(x, y);
    end

    % Test new data in classifier %

        addpath(genpath('CurveLab-2.1.3'));

        % User 0 %

            % Test 1 %

                fprintf('Test 1 for user 0: The quick brown fox jumps over the lazy dog. \n');
                fprintf('Written by user 0. \n');

                addpath('TRIAL\ID-0\TEST-1\');
                labels = [1,2,3,4,5,5,5,6,7,8,8,9,10,11,12,13,14, ...
                          15,15,15,15,16,17,18,18,19,20,46,21,21,22 ...
                          23,24,25,26]';
                class = zeros(1, 35);
                for (i = 1:35)
                    x_test = zeros(7, 1);
                    filename = sprintf('test1 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = predict(knn_class{1, labels(i)}, real(x_test)');
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 35) * 100;
                numb_1 = (length(find(class == 1)) / 35) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-0\TEST-1\');

            % Test 2 %

                fprintf('Test 2 for user 0: My name is Alex. \n');
                fprintf('Written by user 0. \n');

                addpath('TRIAL\ID-0\TEST-2\');
                labels = [27,1,5,5,9,12,13,39,14,19,24,25]';
                class = zeros(1, 12);
                for (i = 1:12)
                    x_test = zeros(7, 1);
                    filename = sprintf('test2 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = predict(knn_class{1, labels(i)}, real(x_test)');
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 12) * 100;
                numb_1 = (length(find(class == 1)) / 12) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-0\TEST-2\');

        % User 1 %

            % Test 1 %

                fprintf('Test 1 for user 1: The quick brown fox jumps over the lazy dog. \n');
                fprintf('Written by user 1. \n');

                addpath('TRIAL\ID-1\TEST-1\');
                labels = [1,2,3,4,5,5,5,6,7,8,8,9,10,11,12,13,14, ...
                          15,15,15,15,16,17,18,18,19,20,46,21,21,22 ...
                          23,24,25,26]';
                class = zeros(1, 35);
                for (i = 1:35)
                    x_test = zeros(7, 1);
                    filename = sprintf('test1 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = predict(knn_class{1, labels(i)}, real(x_test)');
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 35) * 100;
                numb_1 = (length(find(class == 1)) / 35) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-1\TEST-1\');

            % Test 2 %

                fprintf('Test 2 for user 1: My name is Jinsol. \n');
                fprintf('Written by user 1. \n');

                addpath('TRIAL\ID-1\TEST-2\');
                labels = [27,1,5,5,9,12,13,39,14,19,24,25]';
                class = zeros(1, 12);
                for (i = 1:12)
                    x_test = zeros(7, 1);
                    filename = sprintf('test2 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = predict(knn_class{1, labels(i)}, real(x_test)');
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 12) * 100;
                numb_1 = (length(find(class == 1)) / 12) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-1\TEST-2\');

% Perceptron %

    fprintf('Begin classification using Perceptron. \n');

    % Setup classifiers %
    y = [zeros(1, 100), ones(1, 100)];
    perce_class = cell(1, 52);

    % Train Perceptron %
    for (i = 1:52)
        x = [real(testdata{1, i}), real(testdata{2, i})];
        net = perceptron;
        perce_class{1, i} = train(net, x, y);
    end

    % Test new data in classifier %

        addpath(genpath('CurveLab-2.1.3'));

        % User 0 %

            % Test 1 %

                fprintf('Test 1 for user 0: The quick brown fox jumps over the lazy dog. \n');
                fprintf('Written by user 0. \n');

                addpath('TRIAL\ID-0\TEST-1\');
                labels = [1,2,3,4,5,5,5,6,7,8,8,9,10,11,12,13,14, ...
                          15,15,15,15,16,17,18,18,19,20,46,21,21,22 ...
                          23,24,25,26]';
                class = zeros(1, 35);
                for (i = 1:35)
                    x_test = zeros(7, 1);
                    filename = sprintf('test1 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = perce_class{1, labels(i)}(real(x_test));
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 35) * 100;
                numb_1 = (length(find(class == 1)) / 35) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-0\TEST-1\');

            % Test 2 %

                fprintf('Test 2 for user 0: My name is Alex. \n');
                fprintf('Written by user 0. \n');

                addpath('TRIAL\ID-0\TEST-2\');
                labels = [27,1,5,5,9,12,13,39,14,19,24,25]';
                class = zeros(1, 12);
                for (i = 1:12)
                    x_test = zeros(7, 1);
                    filename = sprintf('test2 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = perce_class{1, labels(i)}(real(x_test));
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 12) * 100;
                numb_1 = (length(find(class == 1)) / 12) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-0\TEST-2\');

        % User 1 %

            % Test 1 %

                fprintf('Test 1 for user 1: The quick brown fox jumps over the lazy dog. \n');
                fprintf('Written by user 1. \n');

                addpath('TRIAL\ID-1\TEST-1\');
                labels = [1,2,3,4,5,5,5,6,7,8,8,9,10,11,12,13,14, ...
                          15,15,15,15,16,17,18,18,19,20,46,21,21,22 ...
                          23,24,25,26]';
                class = zeros(1, 35);
                for (i = 1:35)
                    x_test = zeros(7, 1);
                    filename = sprintf('test1 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = perce_class{1, labels(i)}(real(x_test));
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 35) * 100;
                numb_1 = (length(find(class == 1)) / 35) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-1\TEST-1\');

            % Test 2 %

                fprintf('Test 2 for user 1: My name is Jinsol. \n');
                fprintf('Written by user 1. \n');

                addpath('TRIAL\ID-1\TEST-2\');
                labels = [27,1,5,5,9,12,13,39,14,19,24,25]';
                class = zeros(1, 12);
                for (i = 1:12)
                    x_test = zeros(7, 1);
                    filename = sprintf('test2 (%d).png', i);
                    img = rgb2gray(imread(filename));
                    img = imresize(img, [256, 256]);
                    img = edge(img, 'canny', 0.5);
                    C = fdct_usfft(double(img), 0);
                    temp_entropy = zeros(1, 130);
                    temp_energy = zeros(1, 130);
                    temp_std = zeros(1, 130);
                    temp_kurtosis = zeros(1, 130);
                    temp_skewness = zeros(1, 130);
                    temp_moment = zeros(1, 130);
                    temp_iqr = zeros(1, 130);
                    % Level 1 %
                    temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                    temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                    temp_std(1, 1) = std2(C{1, 1}{1, 1});
                    temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                    temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                    temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                    temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                    % Level 2 %
                    for (k = 1:32)
                        temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                        temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                        temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                        temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                        temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                        temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                        temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                    end
                    % Level 3 %
                    for (k = 1:32)
                        temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                        temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                        temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                        temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                        temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                        temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                        temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                    end
                    % Level 4 %
                    for (k = 1:64)
                        temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                        temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                        temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                        temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                        temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                        temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                        temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                    end
                    % Level 5 %
                    temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                    temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                    temp_std(1, 130) = std2(C{1, 5}{1, 1});
                    % Take mean of each feature %
                    x_test(1, 1) = mean(temp_entropy(1, :));
                    x_test(2, 1) = mean(temp_energy(1, :));
                    x_test(3, 1) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    x_test(4, 1) = mean(temp_kurtosis(1, :));
                    x_test(5, 1) = mean(temp_skewness(1, :));
                    x_test(6, 1) = mean(temp_moment(1, :));
                    x_test(7, 1) = mean(temp_iqr(1, :));
                    % Test newly found data against classifier %
                    class(1, i) = perce_class{1, labels(i)}(real(x_test));
                end
                % Display results %
                numb_0 = (length(find(class == 0)) / 12) * 100;
                numb_1 = (length(find(class == 1)) / 12) * 100;
                fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                rmpath('TRIAL\ID-1\TEST-2\');

% Support Vector Machine Classifier %

        fprintf('Begin classification using Support Vector Machines. \n');    

        % Setup classifiers %
        y = [-ones(1, 100), ones(1, 100)]';
        svm_class = cell(1, 52);

        % Train SVM %
        for (i = 1:52)
            x = [real(testdata{1, i}), real(testdata{2, i})]';
            svm_class{1, i} = fitcsvm(x, y, 'KernelFunction', 'rbf', 'ClassNames', [-1 1], 'Standardize', true, 'BoxConstraint', 100, 'OptimizeHyperparameters', 'auto', 'HyperparameterOptimizationOptions', struct('AcquisitionFunctionName', 'expected-improvement-plus'));
        end        

        % Test new data in classifier %

            addpath(genpath('CurveLab-2.1.3'));

            % User 0 %

                % Test 1 %

                    fprintf('Test 1 for user 0: The quick brown fox jumps over the lazy dog. \n');
                    fprintf('Written by user 0. \n');

                    addpath('TRIAL\ID-0\TEST-1\');
                    labels = [1,2,3,4,5,5,5,6,7,8,8,9,10,11,12,13,14, ...
                              15,15,15,15,16,17,18,18,19,20,46,21,21,22 ...
                              23,24,25,26]';
                    class = zeros(1, 35);
                    for (i = 1:35)
                        x_test = zeros(7, 1);
                        filename = sprintf('test1 (%d).png', i);
                        img = rgb2gray(imread(filename));
                        img = imresize(img, [256, 256]);
                        img = edge(img, 'canny', 0.5);
                        C = fdct_usfft(double(img), 0);
                        temp_entropy = zeros(1, 130);
                        temp_energy = zeros(1, 130);
                        temp_std = zeros(1, 130);
                        temp_kurtosis = zeros(1, 130);
                        temp_skewness = zeros(1, 130);
                        temp_moment = zeros(1, 130);
                        temp_iqr = zeros(1, 130);
                        % Level 1 %
                        temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                        temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                        temp_std(1, 1) = std2(C{1, 1}{1, 1});
                        temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                        temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                        temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                        temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                        % Level 2 %
                        for (k = 1:32)
                            temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                            temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                            temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                            temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                            temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                            temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                            temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                        end
                        % Level 3 %
                        for (k = 1:32)
                            temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                            temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                            temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                            temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                            temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                            temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                            temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                        end
                        % Level 4 %
                        for (k = 1:64)
                            temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                            temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                            temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                            temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                            temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                            temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                            temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                        end
                        % Level 5 %
                        temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                        temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                        temp_std(1, 130) = std2(C{1, 5}{1, 1});
                        % Take mean of each feature %
                        x_test(1, 1) = mean(temp_entropy(1, :));
                        x_test(2, 1) = mean(temp_energy(1, :));
                        x_test(3, 1) = mean(temp_std(1, :));
                        temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                        temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                        temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                        temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                        x_test(4, 1) = mean(temp_kurtosis(1, :));
                        x_test(5, 1) = mean(temp_skewness(1, :));
                        x_test(6, 1) = mean(temp_moment(1, :));
                        x_test(7, 1) = mean(temp_iqr(1, :));
                        % Test newly found data against classifier %
                        class(1, i) = svm_class{1, labels(i)}.predict(real(x_test)');
                    end
                    % Display results %
                    numb_0 = (length(find(class == -1)) / 35) * 100;
                    numb_1 = (length(find(class == 1)) / 35) * 100;
                    fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                    fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                    rmpath('TRIAL\ID-0\TEST-1\');

                % Test 2 %

                    fprintf('Test 2 for user 0: My name is Alex. \n');
                    fprintf('Written by user 0. \n');

                    addpath('TRIAL\ID-0\TEST-2\');
                    labels = [27,1,5,5,9,12,13,39,14,19,24,25]';
                    class = zeros(1, 12);
                    for (i = 1:12)
                        x_test = zeros(7, 1);
                        filename = sprintf('test2 (%d).png', i);
                        img = rgb2gray(imread(filename));
                        img = imresize(img, [256, 256]);
                        img = edge(img, 'canny', 0.5);
                        C = fdct_usfft(double(img), 0);
                        temp_entropy = zeros(1, 130);
                        temp_energy = zeros(1, 130);
                        temp_std = zeros(1, 130);
                        temp_kurtosis = zeros(1, 130);
                        temp_skewness = zeros(1, 130);
                        temp_moment = zeros(1, 130);
                        temp_iqr = zeros(1, 130);
                        % Level 1 %
                        temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                        temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                        temp_std(1, 1) = std2(C{1, 1}{1, 1});
                        temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                        temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                        temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                        temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                        % Level 2 %
                        for (k = 1:32)
                            temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                            temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                            temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                            temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                            temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                            temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                            temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                        end
                        % Level 3 %
                        for (k = 1:32)
                            temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                            temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                            temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                            temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                            temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                            temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                            temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                        end
                        % Level 4 %
                        for (k = 1:64)
                            temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                            temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                            temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                            temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                            temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                            temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                            temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                        end
                        % Level 5 %
                        temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                        temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                        temp_std(1, 130) = std2(C{1, 5}{1, 1});
                        % Take mean of each feature %
                        x_test(1, 1) = mean(temp_entropy(1, :));
                        x_test(2, 1) = mean(temp_energy(1, :));
                        x_test(3, 1) = mean(temp_std(1, :));
                        temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                        temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                        temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                        temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                        x_test(4, 1) = mean(temp_kurtosis(1, :));
                        x_test(5, 1) = mean(temp_skewness(1, :));
                        x_test(6, 1) = mean(temp_moment(1, :));
                        x_test(7, 1) = mean(temp_iqr(1, :));
                        % Test newly found data against classifier %
                        class(1, i) = svm_class{1, labels(i)}.predict(real(x_test)');
                    end
                    % Display results %
                    numb_0 = (length(find(class == -1)) / 12) * 100;
                    numb_1 = (length(find(class == 1)) / 12) * 100;
                    fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                    fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                    rmpath('TRIAL\ID-0\TEST-2\');

            % User 1 %

                % Test 1 %

                    fprintf('Test 1 for user 1: The quick brown fox jumps over the lazy dog. \n');
                    fprintf('Written by user 1. \n');

                    addpath('TRIAL\ID-1\TEST-1\');
                    labels = [1,2,3,4,5,5,5,6,7,8,8,9,10,11,12,13,14, ...
                              15,15,15,15,16,17,18,18,19,20,46,21,21,22 ...
                              23,24,25,26]';
                    class = zeros(1, 35);
                    for (i = 1:35)
                        x_test = zeros(7, 1);
                        filename = sprintf('test1 (%d).png', i);
                        img = rgb2gray(imread(filename));
                        img = imresize(img, [256, 256]);
                        img = edge(img, 'canny', 0.5);
                        C = fdct_usfft(double(img), 0);
                        temp_entropy = zeros(1, 130);
                        temp_energy = zeros(1, 130);
                        temp_std = zeros(1, 130);
                        temp_kurtosis = zeros(1, 130);
                        temp_skewness = zeros(1, 130);
                        temp_moment = zeros(1, 130);
                        temp_iqr = zeros(1, 130);
                        % Level 1 %
                        temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                        temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                        temp_std(1, 1) = std2(C{1, 1}{1, 1});
                        temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                        temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                        temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                        temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                        % Level 2 %
                        for (k = 1:32)
                            temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                            temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                            temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                            temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                            temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                            temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                            temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                        end
                        % Level 3 %
                        for (k = 1:32)
                            temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                            temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                            temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                            temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                            temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                            temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                            temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                        end
                        % Level 4 %
                        for (k = 1:64)
                            temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                            temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                            temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                            temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                            temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                            temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                            temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                        end
                        % Level 5 %
                        temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                        temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                        temp_std(1, 130) = std2(C{1, 5}{1, 1});
                        % Take mean of each feature %
                        x_test(1, 1) = mean(temp_entropy(1, :));
                        x_test(2, 1) = mean(temp_energy(1, :));
                        x_test(3, 1) = mean(temp_std(1, :));
                        temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                        temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                        temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                        temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                        x_test(4, 1) = mean(temp_kurtosis(1, :));
                        x_test(5, 1) = mean(temp_skewness(1, :));
                        x_test(6, 1) = mean(temp_moment(1, :));
                        x_test(7, 1) = mean(temp_iqr(1, :));
                        % Test newly found data against classifier %
                        class(1, i) = svm_class{1, labels(i)}.predict(real(x_test)');
                    end
                    % Display results %
                    numb_0 = (length(find(class == -1)) / 35) * 100;
                    numb_1 = (length(find(class == 1)) / 35) * 100;
                    fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                    fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                    rmpath('TRIAL\ID-1\TEST-1\');

                % Test 2 %

                    fprintf('Test 2 for user 1: My name is Jinsol. \n');
                    fprintf('Written by user 1. \n');

                    addpath('TRIAL\ID-1\TEST-2\');
                    labels = [27,1,5,5,9,12,13,39,14,19,24,25]';
                    class = zeros(1, 12);
                    for (i = 1:12)
                        x_test = zeros(7, 1);
                        filename = sprintf('test2 (%d).png', i);
                        img = rgb2gray(imread(filename));
                        img = imresize(img, [256, 256]);
                        img = edge(img, 'canny', 0.5);
                        C = fdct_usfft(double(img), 0);
                        temp_entropy = zeros(1, 130);
                        temp_energy = zeros(1, 130);
                        temp_std = zeros(1, 130);
                        temp_kurtosis = zeros(1, 130);
                        temp_skewness = zeros(1, 130);
                        temp_moment = zeros(1, 130);
                        temp_iqr = zeros(1, 130);
                        % Level 1 %
                        temp_entropy(1, 1) = entropy(real(C{1, 1}{1, 1}));
                        temp_energy(1, 1) = norm(C{1, 1}{1, 1}) ^ 2;
                        temp_std(1, 1) = std2(C{1, 1}{1, 1});
                        temp_kurtosis(1, 1) = mean(kurtosis(C{1, 1}{1, 1}));
                        temp_skewness(1, 1) = mean(skewness(C{1, 1}{1, 1}));
                        temp_moment(1, 1) = mean(moment(C{1, 1}{1, 1}, 2));
                        temp_iqr(1, 1) = mean(iqr(C{1, 1}{1, 1}));
                        % Level 2 %
                        for (k = 1:32)
                            temp_entropy(1, k + 1) = entropy(real(C{1, 2}{1, k}));
                            temp_energy(1, k + 1) = norm(C{1, 2}{1, k}) ^ 2;
                            temp_std(1, k + 1) = std2(C{1, 2}{1, k});
                            temp_kurtosis(1, k + 1) = mean(kurtosis(C{1, 2}{1, k}));
                            temp_skewness(1, k + 1) = mean(skewness(C{1, 2}{1, k}));
                            temp_moment(1, k + 1) = mean(moment(C{1, 2}{1, k}, 2));
                            temp_iqr(1, k + 1) = mean(iqr(C{1, 2}{1, k}));
                        end
                        % Level 3 %
                        for (k = 1:32)
                            temp_entropy(1, k + 33) = entropy(real(C{1, 3}{1, k}));
                            temp_energy(1, k + 33) = norm(C{1, 3}{1, k}) ^ 2;
                            temp_std(1, k + 33) = std2(C{1, 3}{1, k});
                            temp_kurtosis(1, k + 33) = mean(kurtosis(C{1, 3}{1, k}));
                            temp_skewness(1, k + 33) = mean(skewness(C{1, 3}{1, k}));
                            temp_moment(1, k + 33) = mean(moment(C{1, 3}{1, k}, 2));
                            temp_iqr(1, k + 33) = mean(iqr(C{1, 3}{1, k}));
                        end
                        % Level 4 %
                        for (k = 1:64)
                            temp_entropy(1, k + 65) = entropy(real(C{1, 4}{1, k}));
                            temp_energy(1, k + 65) = norm(C{1, 4}{1, k}) ^ 2;
                            temp_std(1, k + 65) = std2(C{1, 4}{1, k});
                            temp_kurtosis(1, k + 65) = mean(kurtosis(C{1, 4}{1, k}));
                            temp_skewness(1, k + 65) = mean(skewness(C{1, 4}{1, k}));
                            temp_moment(1, k + 65) = mean(moment(C{1, 4}{1, k}, 2));
                            temp_iqr(1, k + 65) = mean(iqr(C{1, 4}{1, k}));
                        end
                        % Level 5 %
                        temp_entropy(1, 130) = entropy(real(C{1, 5}{1, 1}));
                        temp_energy(1, 130) = norm(C{1, 5}{1, 1}) ^ 2;
                        temp_std(1, 130) = std2(C{1, 5}{1, 1});
                        % Take mean of each feature %
                        x_test(1, 1) = mean(temp_entropy(1, :));
                        x_test(2, 1) = mean(temp_energy(1, :));
                        x_test(3, 1) = mean(temp_std(1, :));
                        temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                        temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                        temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                        temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                        x_test(4, 1) = mean(temp_kurtosis(1, :));
                        x_test(5, 1) = mean(temp_skewness(1, :));
                        x_test(6, 1) = mean(temp_moment(1, :));
                        x_test(7, 1) = mean(temp_iqr(1, :));
                        % Test newly found data against classifier %
                        class(1, i) = svm_class{1, labels(i)}.predict(real(x_test)');
                    end
                    % Display results %
                    numb_0 = (length(find(class == -1)) / 12) * 100;
                    numb_1 = (length(find(class == 1)) / 12) * 100;
                    fprintf('This sentence has a %4.4f chance of being written by user 0. \n', numb_0);
                    fprintf('This sentence has a %4.4f chance of being written by user 1. \n', numb_1);
                    rmpath('TRIAL\ID-1\TEST-2\');        