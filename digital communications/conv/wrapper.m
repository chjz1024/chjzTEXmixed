classdef wrapper
  properties
    pathRef
  end
  methods
    function obj = wrapper()
      obj.pathRef = zeros(4, 2, 3);
      obj.pathRef(1, 1, :) = [1, 0, 0];
      obj.pathRef(1, 2, :) = [2, 1, 1];
      obj.pathRef(2, 1, :) = [3, 1, 0];
      obj.pathRef(2, 2, :) = [4, 0, 1];
      obj.pathRef(3, 1, :) = [1, 1, 1];
      obj.pathRef(3, 2, :) = [2, 0, 0];
      obj.pathRef(4, 1, :) = [3, 0, 1];
      obj.pathRef(4, 2, :) = [4, 1, 0];
    end
    function [arr, next] = go(obj, channel, input)
      tmp = squeeze(obj.pathRef(channel, input+1, :))';
      arr = tmp(2:end);
      next = tmp(1);
    end
    function ret = com(obj)
      ret = [0 1 1 0 1 0 0 1; 0 1 0 1 1 0 1 0]';
    end
  end
end