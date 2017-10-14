function y = updateGreyLevel(g0)
  fingerprint = im2double(imread('fingerprint_temp.gif'));
  split = fingerprint > g0;
  levelled = fingerprint.*split;
  imshow(levelled);
  xlabel({'g0 =' g0}) % goes onto two lines don't like this 
end