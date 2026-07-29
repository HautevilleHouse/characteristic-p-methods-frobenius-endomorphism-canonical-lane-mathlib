import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

/-!
# Frobenius Endomorphism Package

This package records the Frobenius endomorphism as a bridge object in characteristic p geometry.
The Frobenius endomorphism is the ring homomorphism raising elements to the p-th power.
-/

structure FrobeniusEndomorphismPackage (R : Type u) [CommSemiring R] (p : ℕ) [Fact (Nat.Prime p)] where
  frobeniusMap : R → R
  frobeniusMapSpec : ∀ x : R, frobeniusMap x = x ^ p
  additive : ∀ x y : R, frobeniusMap (x + y) = frobeniusMap x + frobeniusMap y
  multiplicative : ∀ x y : R, frobeniusMap (x * y) = frobeniusMap x * frobeniusMap y
  frobeniusMapClosed : frobeniusMapSpec ∧ additive ∧ multiplicative

structure FrobeniusEndomorphismEvidence (R : Type u) [CommSemiring R] (p : ℕ) [Fact (Nat.Prime p)]
    (F : FrobeniusEndomorphismPackage R p) where
  frobeniusMapSpecClosed : F.frobeniusMapSpec
  additiveClosed : F.additive
  multiplicativeClosed : F.multiplicative

def FrobeniusEndomorphismClosed (R : Type u) [CommSemiring R] (p : ℕ) [Fact (Nat.Prime p)]
    (F : FrobeniusEndomorphismPackage R p) : Prop :=
  F.frobeniusMapSpec ∧ F.additive ∧ F.multiplicative

theorem frobenius_endomorphism_closed_from_evidence
    (R : Type u) [CommSemiring R] (p : ℕ) [Fact (Nat.Prime p)]
    (F : FrobeniusEndomorphismPackage R p) (E : FrobeniusEndomorphismEvidence R p F) :
    FrobeniusEndomorphismClosed R p F := by
  exact And.intro E.frobeniusMapSpecClosed (And.intro E.additiveClosed E.multiplicativeClosed)

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse