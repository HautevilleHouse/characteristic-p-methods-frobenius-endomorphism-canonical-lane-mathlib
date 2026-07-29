import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure PerfectFieldPackage (p : Nat) [Fact (Nat.Prime p)] where
  field : Type u
  fieldChar : CharP field p
  frobeniusSurjective : Prop
  frobeniusInjective : Prop

structure PerfectFieldEvidence {p : Nat} [Fact (Nat.Prime p)]
    (P : PerfectFieldPackage p) where
  frobeniusSurjectiveClosed : P.frobeniusSurjective
  frobeniusInjectiveClosed : P.frobeniusInjective

def PerfectFieldClosed {p : Nat} [Fact (Nat.Prime p)]
    (P : PerfectFieldPackage p) : Prop :=
  P.frobeniusSurjective ∧ P.frobeniusInjective

theorem perfect_field_closed_from_evidence
    {p : Nat} [Fact (Nat.Prime p)] (P : PerfectFieldPackage p)
    (E : PerfectFieldEvidence P) : PerfectFieldClosed P := by
  exact And.intro E.frobeniusSurjectiveClosed E.frobeniusInjectiveClosed

end HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse