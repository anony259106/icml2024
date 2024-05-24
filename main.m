clear;

data_dir = './data/';

data_name = 'semeion.mat';

max_feat_size = 10;

load([data_dir data_name]);

res = proposed_quad(fea, max_feat_size);

pdp_res = PDP(fea(:, res)); % Get PDP value
ent_res = ent_s(fea(:, res)); % Get ENTROPY value

