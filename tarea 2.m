n=12;
m=15;
%hacerlo  con n=12 y m=15
A=randn(n, m);
%se genera SVD
[U, S, V]= svd(A);
%algunas pruebas de ortogonalidad
U*U';
V*V';
length(diag(S));
rank(A);
%%%svd econ
[U_app, S_app, V_app]= svd(A, "econ");
U_app*U_app';

%ya no se cujmple ortogonalidad con la versión economica
sigma = diag(S);
result = zeros(n,m);
for i = 1:length(S)
    result = result + S(i,i)*U(:,i) * V(:,i)'; % <- Creates temp matrix each iteration
end
rank(A_app);
norm(A-A_app, "fro");
