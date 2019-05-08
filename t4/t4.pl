% classifica pobres
pobre(bia).
pobre(pedro).
pobre(maria).

% classifica vitima e insano
vitima(anita).

insano(adriano).
insano(maria).

% onde pessoa X estava no dia Y
estava(pedro,segunda,santamaria).
estava(pedro,terca,santamaria).
estava(pedro,quarta,portoalegre).
estava(pedro,quinta,santamaria).
estava(pedro,sexta,apartamento).

estava(caren,segunda,portoalegre).
estava(caren,terca,portoalegre).
estava(caren,quarta,portoalegre).
estava(caren,quinta,santamaria).
estava(caren,sexta,apartamento).

estava(henrique,segunda,apartamento).
estava(henrique,terca,portoalegre).
estava(henrique,quarta,apartamento).
estava(henrique,quinta,apartamento).
estava(henrique,sexta,apartamento).

estava(bia,segunda,apartamento).
estava(bia,terca,portoalegre).
estava(bia,quarta,portoalegre).
estava(bia,quinta,santamaria).
estava(bia,sexta,apartamento).

estava(adriano,segunda,apartamento).
estava(adriano,terca,apartamento).
estava(adriano,quarta,santamaria).
estava(adriano,quinta,apartamento).
estava(adriano,sexta,apartamento).

estava(alice,terca,portoalegre).
estava(alice,quarta,portoalegre).
estava(alice,segunda,apartamento).
estava(alice,quinta,apartamento).
estava(alice,sexta,apartamento).

estava(bernardo,segunda,santamaria).
estava(bernardo,terca,santamaria).
estava(bernardo,quarta,portoalegre).
estava(bernardo,quinta,santamaria).
estava(bernardo,sexta,apartamento).

estava(maria,terca,santamaria).
estava(maria,quinta,santamaria).
estava(maria,quarta,santamaria).
estava(maria,segunda,apartamento).
estava(maria,sexta,apartamento).



% relacoes atuais
relacao(anita,bernardo).
% relacoes passadas
relacaoPast(bernado,caren).
relacaoPast(anita,pedro).
relacaoPast(pedro,alice).
relacaoPast(alice,henrique).
relacaoPast(henrique,maria).
relacaoPast(maria,adriano).
relacaoPast(adriano,caren).

% pode ter roubado a arma
arma(X) :-
    estava(X,quinta,portoalegre)
    ;estava(X,quinta,apartamento)
    ;estava(X,quarta,apartamento).

% pode ter roubado a chave
chave(X) :-
    estava(X,segunda,santamaria)
    ;estava(X,terca,portoalegre).

chave(bia).
% estava no apartamento na hora do crime
apartamento(X) :-
    estava(X,quinta,apartamento),
    estava(X,sexta,apartamento).

% motivos
ciumes(X) :-
    relacao(anita,Z),
    relacaoPast(Z,X)
    ;relacaoPast(X,Z).


dinheiro(X) :- pobre(X).


acesso(X) :-
    arma(X),
    chave(X),
    apartamento(X).

% x tem motivo?
motivo(X) :-
    ciumes(X)
    ;insano(X)
    ;dinheiro(X).

assassino(X) :- motivo(X), acesso(X).
