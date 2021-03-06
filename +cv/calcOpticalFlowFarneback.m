%CALCOPTICALFLOWFARNEBACK  Computes a dense optical flow using the Gunnar Farneback's algorithm
%
%    flow = cv.calcOpticalFlowFarneback(prevImg, nextImg)
%    flow = cv.calcOpticalFlowFarneback(prevImg, nextImg, 'OptionName',optionValue, ...)
%
% ## Input
% * __prevImg__ First 8-bit single-channel input image.
% * __nextImg__ Second input image of the same size and the same type as
%       `prevImg`.
%
% ## Output
% * __flow__ Computed flow image that has the same size as `prevImg` and
%       `single` type (2-channels). Flow for `(x,y)` is stored in the third
%       dimension.
%
% ## Options
% * __InitialFlow__ Initial flow approximation. Not set by default.
% * __PyrScale__ Parameter specifying the image scale (`<1`) to build pyramids
%       for each image. `PyrScale=0.5` means a classical pyramid, where each
%       next layer is twice smaller than the previous one. default 0.5.
% * __Levels__ Number of pyramid layers including the initial image.
%       `Levels=1` means that no extra layers are created and only the
%       original images are used. default 5.
% * __WinSize__ Averaging window size. Larger values increase the algorithm
%       robustness to image noise and give more chances for fast motion
%       detection, but yield more blurred motion field. default 13.
% * __Iterations__ Number of iterations the algorithm does at each pyramid
%       level. default 10.
% * __PolyN__ Size of the pixel neighborhood used to find polynomial expansion
%       in each pixel. Larger values mean that the image will be approximated
%       with smoother surfaces, yielding more robust algorithm and more
%       blurred motion field. Typically, `PolyN` is 5 or 7. default 5.
% * __PolySigma__ Standard deviation of the Gaussian that is used to smooth
%       derivatives used as a basis for the polynomial expansion. For
%       `PolyN=5`, you can set `PolySigma = 1.1`. For `PolyN=7`, a good value
%       would be `PolySigma = 1.5`. default 1.1.
% * __Gaussian__ Use the Gaussian `WinSize x WinSize` filter instead of a box
%       filter of the same size for optical flow estimation. Usually, this
%       option gives z more accurate flow than with a box filter, at the cost
%       of lower speed. Normally, `WinSize` for a Gaussian window should be
%       set to a larger value to achieve the same level of robustness.
%       default false.
%
% The function finds an optical flow for each `prevImg` pixel using the
% [Farneback2003] alorithm so that:
%
%    prevImg(y,x) ~ next(y + flow(y,x,2), x + flow(y,x,1))
%
% ## References
% [Farneback2003]:
% > Gunnar Farneback. "Two-frame motion estimation based on polynomial
% > expansion". In Image Analysis, pages 363-370. Springer, 2003.
%
% See also: cv.calcOpticalFlowPyrLK, opticalFlowLK, opticalFlowHS,
%  opticalFlowFarneback, vision.OpticalFlow, vision.BlockMatcher
%
