function [ s ] = errorPerSequenceBenchmark( supplementaryFolder )


names = {     ...
'sequence_01' ...
'sequence_02' ...
'sequence_03' ...
'sequence_04' ...
'sequence_05' ...
'sequence_06' ...
'sequence_07' ...
'sequence_08' ...
'sequence_09' ...
'sequence_10' ...
'sequence_11' ...
'sequence_12' ...
'sequence_13' ...
'sequence_14' ...
'sequence_15' ...
};


n = size(names,2);


s = {};

for i=1:n
    statistics = importdata([ supplementaryFolder '/statisticsFiles/' names{i} '.txt']);
    s{i}.name = names{i};
    s{i}.align = statistics(6:7);
    s{i}.eval = statistics(8:9);
    s{i}.mocapRaw = importdata([ supplementaryFolder '/gtFiles/' names{i} '.txt']);
end





end