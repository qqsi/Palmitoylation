function [ ] = palmitoylation( m, n )
% m: number of aa residues upstream, m <= 15
% n: number of aa residues downstream n <= 15

m = uint8(m);
n = uint8(n);

fileID = fopen('sm_palmitoylation_site_peptide.txt');
C = textscan(fileID,'%d\t%s\t%d');
fclose(fileID);

[pid, seq, label] = C{1,:};

seq = cell2mat(seq)
seq = seq(:, 15-m+1:15+n+1)

para_mass = read_linear('Mass.txt');
para_hydropathy_index = read_linear('Hydropathy_index.txt');
para_PI = read_linear('PI.txt');
para_PK1 = read_linear('PK1.txt');
para_PK2 = read_linear('PK2.txt');
para_Polar = read_linear('Polar.txt');
para_vdw_volume = read_linear('van_der_Waals_volume.txt');

paras = [para_mass, para_hydropathy_index, para_PI, para_PK1, para_PK2, para_Polar, para_vdw_volume]


end

