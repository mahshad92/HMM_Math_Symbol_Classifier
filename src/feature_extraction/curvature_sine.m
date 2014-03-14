%{
    DPRL Hidden Markov Model (HMM) Math Symbol Classifier
    Copyright (c) 2010-2014 Lei Hu, Richard Zanibbi

    This file is part of DPRL Hidden Markov Model(HMM) Math Symbol Classifier.

    DPRL Hidden Markov Model (HMM) Math Symbol Classifier is free software: 
    you can redistribute it and/or modify it under the terms of the GNU 
    General Public License as published by the Free Software Foundation, 
    either version 3 of the License, or (at your option) any later version.

    DPRL Hidden Markov Model (HMM) Math Symbol Classifier is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with DPRL Hidden Markov Model (HMM) Math Symbol Classifier.  
    If not, see <http://www.gnu.org/licenses/>.

    Contact:
        - Lei Hu: lei.hu@rit.edu
        - Richard Zanibbi: rlaz@cs.rit.edu 
%}

function sineofcurvature = curvature_sine(all_point_coordinate)

coordinates = all_point_coordinate;
co_length = size(coordinates,1);
sinofcurvature = zeros(co_length,1);

for i = 3: co_length-2

    delta_angle = acosd(dot([coordinates(i-2,1)-coordinates(i,1),coordinates(i-2,2)-coordinates(i,2)],...
        [coordinates(i+2,1)-coordinates(i,1),coordinates(i+2,2)-coordinates(i,2)])/...
        (norm([coordinates(i-2,1)-coordinates(i,1),coordinates(i-2,2)-coordinates(i,2)])*...
        norm([coordinates(i+2,1)-coordinates(i,1),coordinates(i+2,2)-coordinates(i,2)])));
    sinofcurvature(i,1) = sin((delta_angle/180)*pi);    
end

sineofcurvature = sinofcurvature;
end