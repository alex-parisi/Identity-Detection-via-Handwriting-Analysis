%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                           %%%%
%%%%                 ALEX PARISI & JINSOL LEE                  %%%%
%%%%                                                           %%%%
%%%%-----------------------------------------------------------%%%%
%%%%                                                           %%%%
%%%%    THIS SCRIPT WILL GENERATE THE TRAINING DATASET BY      %%%%
%%%%    READING THE IMAGES & PERFORMING CANNY EDGE DETECTION   %%%%
%%%%    WITH A THRESHOLD OF 0.5. THEN, THE SCRIPT WILL         %%%%
%%%%    PERFORM THE CURVELET TRANSFORM ON EACH PROCESSED       %%%%
%%%%    IMAGE. THE RESULT WILL BE 130 DIFFERENT SETS OF        %%%%
%%%%    CURVLET COEFFICIENTS. WE THEN TAKE THE ENTROPY,        %%%%
%%%%    ENERGY, AND STANDARD DEVIATION OF EACH SET OF          %%%%
%%%%    COEFFICIENTS. WE THEN TAKE THE MEAN FOR EACH FEATURE   %%%%
%%%%    OF THE 130 LEVELS, PRODUCING A THREE-DIMENSIONAL       %%%%
%%%%    OBSERVATION. EACH USER HAS 100 IMAGES PER LETTER,      %%%%
%%%%    MEANING THERE ARE 5,200 OBSERVATIONS FOR EACH USER.    %%%%
%%%%                                                           %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    clear all;
    clc;
    close all;

    % Load Test Images %
    
        fprintf('Loading test images... \n');
    
        % User 0 %
        
            fprintf('Loading test images for user 0... \n');
        
            % 'a' %

                testa_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\a');
                for (i = 1:100)
                    filename = sprintf('a (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testa_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\a');
                
            % 'b' %

                testb_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\b');
                for (i = 1:100)
                    filename = sprintf('b (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testb_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\b');
                
            % 'c' %

                testc_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\c');
                for (i = 1:100)
                    filename = sprintf('c (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testc_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\c');
                
            % 'd' %

                testd_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\d');
                for (i = 1:100)
                    filename = sprintf('d (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testd_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\d');
                
            % 'e' %

                teste_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\e');
                for (i = 1:100)
                    filename = sprintf('e (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    teste_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\e');
                
            % 'f' %

                testf_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\f');
                for (i = 1:100)
                    filename = sprintf('f (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testf_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\f');
                
            % 'g' %

                testg_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\g');
                for (i = 1:100)
                    filename = sprintf('g (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testg_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\g');
                
            % 'h' %

                testh_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\h');
                for (i = 1:100)
                    filename = sprintf('h (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testh_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\h');
                
            % 'i' %

                testi_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\i');
                for (i = 1:100)
                    filename = sprintf('i (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testi_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\i');
                
            % 'j' %

                testj_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\j');
                for (i = 1:100)
                    filename = sprintf('j (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testj_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\j');
                
            % 'k' %

                testk_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\k');
                for (i = 1:100)
                    filename = sprintf('k (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testk_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\k');
                
            % 'l' %

                testl_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\l');
                for (i = 1:100)
                    filename = sprintf('l (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testl_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\l');
                
            % 'm' %

                testm_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\m');
                for (i = 1:100)
                    filename = sprintf('m (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testm_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\m');
                
            % 'n' %

                testn_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\n');
                for (i = 1:100)
                    filename = sprintf('n (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testn_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\n');
                
            % 'o' %

                testo_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\o');
                for (i = 1:100)
                    filename = sprintf('o (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testo_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\o');
                
            % 'p' %

                testp_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\p');
                for (i = 1:100)
                    filename = sprintf('p (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testp_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\p');
                
            % 'q' %

                testq_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\q');
                for (i = 1:100)
                    filename = sprintf('q (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testq_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\q');
                
            % 'r' %

                testr_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\r');
                for (i = 1:100)
                    filename = sprintf('r (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testr_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\r');
                
            % 's' %

                tests_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\s');
                for (i = 1:100)
                    filename = sprintf('s (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    tests_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\s');
                
            % 't' %

                testt_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\t');
                for (i = 1:100)
                    filename = sprintf('t (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testt_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\t');
                
            % 'u' %

                testu_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\u');
                for (i = 1:100)
                    filename = sprintf('u (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testu_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\u');
                
            % 'v' %

                testv_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\v');
                for (i = 1:100)
                    filename = sprintf('v (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testv_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\v');
                
            % 'w' %

                testw_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\w');
                for (i = 1:100)
                    filename = sprintf('w (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testw_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\w');
                
            % 'x' %

                testx_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\x');
                for (i = 1:100)
                    filename = sprintf('x (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testx_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\x');
                
            % 'y' %

                testy_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\y');
                for (i = 1:100)
                    filename = sprintf('y (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testy_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\y');
                
            % 'z' %

                testz_user0 = cell(100);
                addpath('TEST_IMG\ID-0\LOWER\z');
                for (i = 1:100)
                    filename = sprintf('z (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testz_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\LOWER\z');
                
            fprintf('Loaded lowercase test images for user 0. \n');
            fprintf('Completed edge detection on lowercase test images for user 0. \n');
            
            % 'A' %

                testA_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\A');
                for (i = 1:100)
                    filename = sprintf('A (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testA_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\A');
                
            % 'B' %

                testB_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\B');
                for (i = 1:100)
                    filename = sprintf('B (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testB_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\B');
                
            % 'C' %

                testC_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\C');
                for (i = 1:100)
                    filename = sprintf('C (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testC_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\C');
                
            % 'D' %

                testD_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\D');
                for (i = 1:100)
                    filename = sprintf('D (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testD_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\D');
                
            % 'E' %

                testE_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\E');
                for (i = 1:100)
                    filename = sprintf('E (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testE_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\E');
                
            % 'F' %

                testF_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\F');
                for (i = 1:100)
                    filename = sprintf('F (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testF_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\F');
                
            % 'G' %

                testG_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\G');
                for (i = 1:100)
                    filename = sprintf('G (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testG_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\G');
                
            % 'H' %

                testH_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\H');
                for (i = 1:100)
                    filename = sprintf('H (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testH_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\H');
                
            % 'I' %

                testI_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\I');
                for (i = 1:100)
                    filename = sprintf('I (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testI_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\I');
                
            % 'J' %

                testJ_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\J');
                for (i = 1:100)
                    filename = sprintf('J (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testJ_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\J');
                
            % 'K' %

                testK_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\K');
                for (i = 1:100)
                    filename = sprintf('K (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testK_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\K');
                
            % 'L' %

                testL_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\L');
                for (i = 1:100)
                    filename = sprintf('L (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testL_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\L');
                
            % 'M' %

                testM_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\M');
                for (i = 1:100)
                    filename = sprintf('M (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testM_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\M');
                
            % 'N' %

                testN_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\N');
                for (i = 1:100)
                    filename = sprintf('N (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testN_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\N');
                
            % 'O' %

                testO_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\O');
                for (i = 1:100)
                    filename = sprintf('O (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testO_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\O');
                
            % 'P' %

                testP_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\P');
                for (i = 1:100)
                    filename = sprintf('P (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testP_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\P');
                
            % 'Q' %

                testQ_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\Q');
                for (i = 1:100)
                    filename = sprintf('Q (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testQ_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\Q');
                
            % 'R' %

                testR_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\R');
                for (i = 1:100)
                    filename = sprintf('R (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testR_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\R');
                
            % 'S' %

                testS_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\S');
                for (i = 1:100)
                    filename = sprintf('S (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testS_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\S');
                
            % 'T' %

                testT_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\T');
                for (i = 1:100)
                    filename = sprintf('T (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testT_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\T');
                
            % 'U' %

                testU_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\U');
                for (i = 1:100)
                    filename = sprintf('U (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testU_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\U');
                
            % 'V' %

                testV_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\V');
                for (i = 1:100)
                    filename = sprintf('V (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testV_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\V');
                
            % 'W' %

                testW_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\W');
                for (i = 1:100)
                    filename = sprintf('W (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testW_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\W');
                
            % 'X' %

                testX_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\X');
                for (i = 1:100)
                    filename = sprintf('X (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testX_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\X');
                
            % 'Y' %

                testY_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\Y');
                for (i = 1:100)
                    filename = sprintf('Y (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testY_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\Y');
                
            % 'Z' %

                testZ_user0 = cell(100);
                addpath('TEST_IMG\ID-0\UPPER\Z');
                for (i = 1:100)
                    filename = sprintf('Z (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testZ_user0{i} = temp;
                end
                rmpath('TEST_IMG\ID-0\UPPER\Z');
                
            fprintf('Loaded uppercase test images for user 0. \n');
            fprintf('Completed edge detection on uppercase test images for user 0. \n');
            fprintf('Loaded all test images for user 0. \n');
            fprintf('Completed edge detection on all test images for user 0. \n');
            
        % User 1 %
        
            fprintf('Loading test images for user 1... \n');
        
            % 'a' %

                testa_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\a');
                for (i = 1:100)
                    filename = sprintf('a (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testa_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\a');
                
            % 'b' %

                testb_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\b');
                for (i = 1:100)
                    filename = sprintf('b (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testb_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\b');
                
            % 'c' %

                testc_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\c');
                for (i = 1:100)
                    filename = sprintf('c (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testc_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\c');
                
            % 'd' %

                testd_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\d');
                for (i = 1:100)
                    filename = sprintf('d (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testd_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\d');
                
            % 'e' %

                teste_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\e');
                for (i = 1:100)
                    filename = sprintf('e (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    teste_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\e');
                
            % 'f' %

                testf_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\f');
                for (i = 1:100)
                    filename = sprintf('f (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testf_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\f');
                
            % 'g' %

                testg_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\g');
                for (i = 1:100)
                    filename = sprintf('g (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testg_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\g');
                
            % 'h' %

                testh_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\h');
                for (i = 1:100)
                    filename = sprintf('h (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testh_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\h');
                
            % 'i' %

                testi_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\i');
                for (i = 1:100)
                    filename = sprintf('i (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testi_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\i');
                
            % 'j' %

                testj_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\j');
                for (i = 1:100)
                    filename = sprintf('j (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testj_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\j');
                
            % 'k' %

                testk_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\k');
                for (i = 1:100)
                    filename = sprintf('k (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testk_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\k');
                
            % 'l' %

                testl_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\l');
                for (i = 1:100)
                    filename = sprintf('l (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testl_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\l');
                
            % 'm' %

                testm_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\m');
                for (i = 1:100)
                    filename = sprintf('m (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testm_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\m');
                
            % 'n' %

                testn_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\n');
                for (i = 1:100)
                    filename = sprintf('n (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testn_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\n');
                
            % 'o' %

                testo_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\o');
                for (i = 1:100)
                    filename = sprintf('o (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testo_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\o');
                
            % 'p' %

                testp_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\p');
                for (i = 1:100)
                    filename = sprintf('p (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testp_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\p');
                
            % 'q' %

                testq_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\q');
                for (i = 1:100)
                    filename = sprintf('q (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testq_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\q');
                
            % 'r' %

                testr_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\r');
                for (i = 1:100)
                    filename = sprintf('r (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testr_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\r');
                
            % 's' %

                tests_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\s');
                for (i = 1:100)
                    filename = sprintf('s (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    tests_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\s');
                
            % 't' %

                testt_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\t');
                for (i = 1:100)
                    filename = sprintf('t (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testt_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\t');
                
            % 'u' %

                testu_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\u');
                for (i = 1:100)
                    filename = sprintf('u (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testu_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\u');
                
            % 'v' %

                testv_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\v');
                for (i = 1:100)
                    filename = sprintf('v (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testv_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\v');
                
            % 'w' %

                testw_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\w');
                for (i = 1:100)
                    filename = sprintf('w (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testw_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\w');
                
            % 'x' %

                testx_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\x');
                for (i = 1:100)
                    filename = sprintf('x (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testx_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\x');
                
            % 'y' %

                testy_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\y');
                for (i = 1:100)
                    filename = sprintf('y (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testy_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\y');
                
            % 'z' %

                testz_user1 = cell(100);
                addpath('TEST_IMG\ID-1\LOWER\z');
                for (i = 1:100)
                    filename = sprintf('z (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testz_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\LOWER\z');
                
            fprintf('Loaded lowercase test images for user 1. \n');
            fprintf('Completed edge detection on lowercase test images for user 1. \n');
            
            % 'A' %

                testA_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\A');
                for (i = 1:100)
                    filename = sprintf('A (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testA_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\A');
                
            % 'B' %

                testB_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\B');
                for (i = 1:100)
                    filename = sprintf('B (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testB_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\B');
                
            % 'C' %

                testC_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\C');
                for (i = 1:100)
                    filename = sprintf('C (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testC_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\C');
                
            % 'D' %

                testD_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\D');
                for (i = 1:100)
                    filename = sprintf('D (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testD_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\D');
                
            % 'E' %

                testE_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\E');
                for (i = 1:100)
                    filename = sprintf('E (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testE_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\E');
                
            % 'F' %

                testF_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\F');
                for (i = 1:100)
                    filename = sprintf('F (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testF_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\F');
                
            % 'G' %

                testG_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\G');
                for (i = 1:100)
                    filename = sprintf('G (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testG_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\G');
                
            % 'H' %

                testH_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\H');
                for (i = 1:100)
                    filename = sprintf('H (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testH_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\H');
                
            % 'I' %

                testI_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\I');
                for (i = 1:100)
                    filename = sprintf('I (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testI_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\I');
                
            % 'J' %

                testJ_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\J');
                for (i = 1:100)
                    filename = sprintf('J (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testJ_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\J');
                
            % 'K' %

                testK_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\K');
                for (i = 1:100)
                    filename = sprintf('K (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testK_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\K');
                
            % 'L' %

                testL_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\L');
                for (i = 1:100)
                    filename = sprintf('L (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testL_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\L');
                
            % 'M' %

                testM_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\M');
                for (i = 1:100)
                    filename = sprintf('M (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testM_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\M');
                
            % 'N' %

                testN_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\N');
                for (i = 1:100)
                    filename = sprintf('N (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testN_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\N');
                
            % 'O' %

                testO_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\O');
                for (i = 1:100)
                    filename = sprintf('O (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testO_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\O');
                
            % 'P' %

                testP_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\P');
                for (i = 1:100)
                    filename = sprintf('P (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testP_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\P');
                
            % 'Q' %

                testQ_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\Q');
                for (i = 1:100)
                    filename = sprintf('Q (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testQ_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\Q');
                
            % 'R' %

                testR_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\R');
                for (i = 1:100)
                    filename = sprintf('R (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testR_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\R');
                
            % 'S' %

                testS_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\S');
                for (i = 1:100)
                    filename = sprintf('S (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testS_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\S');
                
            % 'T' %

                testT_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\T');
                for (i = 1:100)
                    filename = sprintf('T (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testT_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\T');
                
            % 'U' %

                testU_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\U');
                for (i = 1:100)
                    filename = sprintf('U (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testU_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\U');
                
            % 'V' %

                testV_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\V');
                for (i = 1:100)
                    filename = sprintf('V (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testV_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\V');
                
            % 'W' %

                testW_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\W');
                for (i = 1:100)
                    filename = sprintf('W (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testW_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\W');
                
            % 'X' %

                testX_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\X');
                for (i = 1:100)
                    filename = sprintf('X (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testX_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\X');
                
            % 'Y' %

                testY_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\Y');
                for (i = 1:100)
                    filename = sprintf('Y (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testY_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\Y');
                
            % 'Z' %

                testZ_user1 = cell(100);
                addpath('TEST_IMG\ID-1\UPPER\Z');
                for (i = 1:100)
                    filename = sprintf('Z (%d).jpg', i);
                    temp = imread(filename);
                    temp = imresize(temp, [256 256]);
                    temp = edge(temp, 'canny', 0.5);
                    testZ_user1{i} = temp;
                end
                rmpath('TEST_IMG\ID-1\UPPER\Z');
                
            fprintf('Loaded uppercase test images for user 1. \n');
            fprintf('Completed edge detection on uppercase test images for user 1. \n');
            fprintf('Loaded all test images for user 1. \n');
            fprintf('Completed edge detection on all test images for user 1. \n');
            fprintf('Loaded all test images! \n');
            fprintf('Completed edge detection on all test images! \n');
            
    % Extract features from test data %
    
        fprintf('Extracting features from test data... \n');
        testdata = cell(2, 52);
        addpath(genpath('CurveLab-2.1.3'));
        
        % User 0 %
        
            fprintf('Extracting features for user 0... \n');
        
            % 'a' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testa_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 1} = temp_arr;
            
            % 'b' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testb_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 2} = temp_arr;
            
            % 'c' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testc_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 3} = temp_arr;
            
            % 'd' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testd_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 4} = temp_arr;
            
            % 'e' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = teste_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 5} = temp_arr;
            
            % 'f' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testf_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 6} = temp_arr;
            
            % 'g' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testg_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 7} = temp_arr;
            
            % 'h' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testh_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 8} = temp_arr;
            
            % 'i' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testi_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 9} = temp_arr;
            
           % 'j' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testj_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 10} = temp_arr;
            
            % 'k' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testk_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 11} = temp_arr;
            
            % 'l' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testl_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 12} = temp_arr;
            
            % 'm' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testm_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 13} = temp_arr;
            
            % 'n' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testn_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 14} = temp_arr;
            
            % 'o' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testo_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 15} = temp_arr;
            
            % 'p' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testp_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 16} = temp_arr;
            
            % 'q' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testq_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 17} = temp_arr;
            
            % 'r' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testr_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 18} = temp_arr;
            
            % 's' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = tests_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 19} = temp_arr;
            
            % 't' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testt_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 20} = temp_arr;
            
            % 'u' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testu_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 21} = temp_arr;
            
            % 'v' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testv_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 22} = temp_arr;
            
            % 'w' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testw_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 23} = temp_arr;
            
            % 'x' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testx_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 24} = temp_arr;
            
            % 'y' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testy_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 25} = temp_arr;
            
            % 'z' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testz_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 26} = temp_arr;
                
            fprintf('Extracted all features from lowercase letters for user 0! \n');
            
            % 'A' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testA_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 27} = temp_arr;
            
            % 'B' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testB_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 28} = temp_arr;
            
            % 'C' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testC_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 29} = temp_arr;
            
            % 'D' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testD_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 30} = temp_arr;
            
            % 'E' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testE_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 31} = temp_arr;
            
            % 'F' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testF_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 32} = temp_arr;
            
            % 'G' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testG_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 33} = temp_arr;
            
            % 'H' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testH_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 34} = temp_arr;
            
            % 'I' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testI_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 35} = temp_arr;
            
            % 'J' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testJ_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 36} = temp_arr;
            
            % 'K' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testK_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 37} = temp_arr;
            
            % 'L' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testL_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 38} = temp_arr;
            
            % 'M' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testM_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 39} = temp_arr;
            
            % 'N' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testN_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 40} = temp_arr;
            
            % 'O' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testO_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 41} = temp_arr;
            
            % 'P' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testP_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 42} = temp_arr;
            
            % 'Q' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testQ_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 43} = temp_arr;
            
            % 'R' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testR_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 44} = temp_arr;
            
            % 'S' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testS_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 45} = temp_arr;
            
            % 'T' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testT_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 46} = temp_arr;
            
            % 'U' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testU_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 47} = temp_arr;
            
            % 'V' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testV_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 48} = temp_arr;
            
            % 'W' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testW_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 49} = temp_arr;
            
            % 'X' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testX_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 50} = temp_arr;
            
            % 'Y' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testY_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 51} = temp_arr;
            
            % 'Z' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testZ_user0{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{1, 52} = temp_arr;
            
            fprintf('Extracted all features from uppercase letters for user 0! \n');
            fprintf('Extraced all features for user 0! \n');
            
        % User 1 %
        
            fprintf('Extracting features for user 1... \n');
        
            % 'a' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testa_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 1} = temp_arr;
            
            % 'b' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testb_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 2} = temp_arr;
            
            % 'c' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testc_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 3} = temp_arr;
            
            % 'd' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testd_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                end
                testdata{2, 4} = temp_arr;
            
            % 'e' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = teste_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 5} = temp_arr;
            
            % 'f' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testf_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 6} = temp_arr;
            
            % 'g' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testg_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 7} = temp_arr;
            
            % 'h' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testh_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 8} = temp_arr;
            
            % 'i' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testi_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 9} = temp_arr;
            
           % 'j' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testj_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 10} = temp_arr;
            
            % 'k' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testk_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 11} = temp_arr;
            
            % 'l' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testl_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 12} = temp_arr;
            
            % 'm' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testm_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 13} = temp_arr;
            
            % 'n' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testn_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 14} = temp_arr;
            
            % 'o' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testo_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 15} = temp_arr;
            
            % 'p' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testp_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 16} = temp_arr;
            
            % 'q' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testq_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 17} = temp_arr;
            
            % 'r' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testr_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 18} = temp_arr;
            
            % 's' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = tests_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 19} = temp_arr;
            
            % 't' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testt_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 20} = temp_arr;
            
            % 'u' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testu_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 21} = temp_arr;
            
            % 'v' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testv_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 22} = temp_arr;
            
            % 'w' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testw_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 23} = temp_arr;
            
            % 'x' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testx_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 24} = temp_arr;
            
            % 'y' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testy_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 25} = temp_arr;
            
            % 'z' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testz_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 26} = temp_arr;
                
            fprintf('Extracted all features from lowercase letters for user 1! \n');
            
            % 'A' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testA_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 27} = temp_arr;
            
            % 'B' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testB_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 28} = temp_arr;
            
            % 'C' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testC_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 29} = temp_arr;
            
            % 'D' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testD_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 30} = temp_arr;
            
            % 'E' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testE_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 31} = temp_arr;
            
            % 'F' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testF_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 32} = temp_arr;
            
            % 'G' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testG_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 33} = temp_arr;
            
            % 'H' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testH_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 34} = temp_arr;
            
            % 'I' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testI_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 35} = temp_arr;
            
            % 'J' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testJ_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 36} = temp_arr;
            
            % 'K' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testK_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 37} = temp_arr;
            
            % 'L' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testL_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 38} = temp_arr;
            
            % 'M' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testM_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 39} = temp_arr;
            
            % 'N' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testN_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 40} = temp_arr;
            
            % 'O' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testO_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 41} = temp_arr;
            
            % 'P' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testP_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 42} = temp_arr;
            
            % 'Q' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testQ_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 43} = temp_arr;
            
            % 'R' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testR_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 44} = temp_arr;
            
            % 'S' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testS_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 45} = temp_arr;
            
            % 'T' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testT_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 46} = temp_arr;
            
            % 'U' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testU_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 47} = temp_arr;
            
            % 'V' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testV_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 48} = temp_arr;
            
            % 'W' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testW_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 49} = temp_arr;
            
            % 'X' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testX_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 50} = temp_arr;
            
            % 'Y' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testY_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 51} = temp_arr;
            
            % 'Z' %
            
                temp_arr = zeros(7, 100);
                for (i = 1:100)
                    tempImage = testZ_user1{i};
                    C = fdct_usfft(double(tempImage), 0);
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
                    temp_arr(1, i) = mean(temp_entropy(1, :));
                    temp_arr(2, i) = mean(temp_energy(1, :));
                    temp_arr(3, i) = mean(temp_std(1, :));
                    temp_kurtosis(1, 130) = mean(kurtosis(C{1, 5}{1, 1}));
                    temp_skewness(1, 130) = mean(skewness(C{1, 5}{1, 1}));
                    temp_moment(1, 130) = mean(moment(C{1, 5}{1, 1}, 2));
                    temp_iqr(1, 130) = mean(iqr(C{1, 5}{1, 1}));
                    temp_arr(4, i) = mean(temp_kurtosis(1, :));
                    temp_arr(5, i) = mean(temp_skewness(1, :));
                    temp_arr(6, i) = mean(temp_moment(1, :));
                    temp_arr(7, i) = mean(temp_iqr(1, :));
                end
                testdata{2, 52} = temp_arr;
                
            fprintf('Extracted all features for user! \n');
            fprintf('All features have been extracted! \n');
            fprintf('Data generation complete!!! \n');