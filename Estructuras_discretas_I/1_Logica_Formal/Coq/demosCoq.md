# Demostraciones Coq

[Coq](https://jscoq.github.io/scratchpad.html)

```coq
Check 0.

Print nat.

Check Nat.add.

Compute Nat.add 2 3.

Check S (S (S O)).

Check S (S O).

Check S O.

Print Nat.add. 


Fixpoint plus (n : nat) (m : nat) : nat :=
  match n with
    | O => m
    | S n' => S (plus n' m)
  end.

Check plus.

Compute plus O (S O).


Fixpoint mult (n m: nat) : nat :=
  match n with
    | O => O
    | S n' => plus m (mult n' m)
  end.

Compute mult (S (S O)) (S (S (S O))).

Fixpoint factorial (n : nat) : nat :=
  match n with
    | O => S O
    | S n' => S n' * factorial n'
  end.

Theorem add0 : forall n : nat, 0 + n = n.  
Proof. 
   intros n. reflexivity. Qed.

Lemma e1 : forall P Q : Prop, P /\ Q -> P \/ Q.
intros P Q.
intro.
destruct H.
left.
exact H.
Qed.

Lemma e2 : forall P Q R S : Prop, (P \/ Q) /\ (Q /\ R) /\ (R /\ S) -> S.
intros P Q R S.
intro.
destruct H.
apply H0.
Qed.

Lemma e3 : forall P Q R : Prop, (P /\ Q) -> (Q /\ R) -> (P /\ R).
intros P Q R.
intro.
intro.
destruct H.
destruct H0.
split.
exact H.
exact H2.
Qed.

Lemma e4 : forall P Q R : Prop, (P <-> Q) -> (Q <-> R) -> (P <-> R).
intros P Q R. 
intros.
split.
intro.
apply H0.
apply H.
apply H1.
intros.
apply H.
apply H0.
apply H1.
Qed.

Lemma e5 : forall P Q : Prop, P /\ Q -> P.
intros P Q.
intro.
destruct H.
exact H.
Qed.

Lemma e6 : forall P Q : Prop, P -> P \/ Q.
intros P Q.
intro.
left.
exact H.
Qed.


Lemma e7 : forall P Q : Prop, ~P -> (P -> Q).
intros P Q.
intro.
intro.
contradiction.
Qed.

Lemma e8 : forall P Q : Prop, P /\ Q -> (P -> Q).
intros P Q.
intro.
intro.
destruct H.
exact H1.
Qed.

Lemma e9 : forall P Q : Prop, P /\ (~P \/ Q) -> Q.
intros P Q.
intro.
destruct H.
destruct H0.
contradiction.
exact H0.
Qed.

Lemma e10 : forall P Q R: Prop, (P -> Q) /\ (Q -> R) -> (P -> R).
intros P Q R.
intro.
intro.
destruct H.
apply H1.
apply H.
exact H0.
Qed.

Lemma e11 : forall P Q : Prop, P /\ (P /\ Q) -> Q.
intros P Q.
intro.
destruct H.
apply H0.
Qed.


Theorem a1 : forall P Q R: Prop, (P -> Q -> R) -> (P -> Q) -> P -> R.
intros P Q R.
intros H1.
intros H2 H3.
apply H1.
exact H3.
exact (H2 H3).
Qed.


Theorem a2 : forall P Q R: Prop, (P -> Q -> R) -> (P -> Q) -> P -> R. 
intros.
apply H.
exact H1.
exact (H0 H1).
Qed.


Theorem a3 : forall P Q R: Prop, (P /\ Q) \/ (P /\ R) -> P /\ (Q \/ R).
intros.
destruct H as [H1 | H2].
split.
destruct H1 as [HP HQ].
exact HP.
destruct H1 as [HP HQ].
left.
exact HQ.
split.
destruct H2 as [HP HR].
auto.
destruct H2 as [HP HR].
auto.
Qed.


Theorem a4 : forall P Q R: Prop, (P /\ Q) \/ (P /\ R) -> P /\ (Q \/ R).
intros.
destruct H as [H1 | H2].
split.
destruct H1 as [HP HQ].
exact HP.
destruct H1 as [HP HQ].
left.
exact HQ.
split.
destruct H2 as [HP HR].
exact HP.
destruct H2 as [HP HQ].
right. 
exact HQ.
Qed.


Theorem a5 : forall P: Prop, not( P /\ not P).
unfold not.
intros.
destruct H as [H1 H2].
auto.
Qed.


Section PredicateLogic.

Variable D : Set.
Variable R : D -> D -> Prop. 


Theorem a6 :  ( forall x y : D, R x y -> R y x) -> ( forall x y z : D, R x y -> R y z -> R x z) -> ( forall x : D, ( exists y : D, R x y) -> R x x).     
intros Rsym.
intros Rtrans.
intros x.
intros xR_.
destruct xR_ as [y xRy].
apply Rtrans with (y := y).
assumption.
apply Rsym.
assumption.
Qed.
```