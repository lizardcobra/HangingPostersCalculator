function [inches,remainder] = formatToInches(value,precision)
    inches = floor(value);
    remainder = round((value - inches)/precision);
end