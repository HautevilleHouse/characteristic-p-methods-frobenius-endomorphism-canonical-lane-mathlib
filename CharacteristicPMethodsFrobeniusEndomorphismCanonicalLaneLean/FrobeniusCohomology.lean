import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusCohomologyPackage (p : Nat) [Fact (Nat.Prime p)] where
  scheme : Type u
  etaleCohomology : Type v
  frobeniusAction : etaleCohomology → etaleCohomology
  frobeniusLinear : Prop
  frobeniusStabilizes : Prop

structure FrobeniusCohomologyEvidence {p : Nat} [Fact (Nat.Prime p)]
    (F : FrobeniusCohomologyPackage p) where
  frobeniusLinearClosed : F.frobeniusLinear
  frobeniusStabilizesClosed : F.frobeniusStabilizes

def FrobeniusCohomologyClosed {p : Nat} [Fact (Nat.Prime p)]
    (F : FrobeniusCohomologyPackage p) : Prop :=
  F.frobeniusLinear ∧ F.frobeniusStabilizes

theorem frobenius_cohomology_closed_from_evidence
    {p : Nat} [Fact (Nat.Prime p)] (F : FrobeniusCohomologyPackage p)
    (E : FrobeniusCohomologyEvidence F) : FrobeniusCohomologyClosed F := by
  exact And.intro E.frobeniusLinearClosed E.frobeniusStabilizesClosed

end HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse