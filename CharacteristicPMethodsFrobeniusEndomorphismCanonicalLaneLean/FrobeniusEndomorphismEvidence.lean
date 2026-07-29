import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusEndomorphismEvidencePackage (p : Nat) [Fact (Nat.Prime p)] where
  field : Type u
  charP : CharP field p
  frobeniusDefined : field → field
  frobeniusAdd : ∀ x y : field, frobeniusDefined (x + y) = frobeniusDefined x + frobeniusDefined y
  frobeniusMul : ∀ x y : field, frobeniusDefined (x * y) = frobeniusDefined x * frobeniusDefined y
  frobeniusOne : frobeniusDefined 1 = 1

structure FrobeniusEndomorphismEvidenceEvidence {p : Nat} [Fact (Nat.Prime p)]
    (P : FrobeniusEndomorphismEvidencePackage p) where
  frobeniusAddClosed : ∀ x y : P.field, P.frobeniusDefined (x + y) = P.frobeniusDefined x + P.frobeniusDefined y
  frobeniusMulClosed : ∀ x y : P.field, P.frobeniusDefined (x * y) = P.frobeniusDefined x * P.frobeniusDefined y
  frobeniusOneClosed : P.frobeniusDefined 1 = 1

def FrobeniusEndomorphismEvidenceClosed {p : Nat} [Fact (Nat.Prime p)]
    (P : FrobeniusEndomorphismEvidencePackage p) : Prop :=
  (∀ x y : P.field, P.frobeniusDefined (x + y) = P.frobeniusDefined x + P.frobeniusDefined y) ∧
  (∀ x y : P.field, P.frobeniusDefined (x * y) = P.frobeniusDefined x * P.frobeniusDefined y) ∧
  P.frobeniusDefined 1 = 1

theorem frobenius_endomorphism_evidence_closed_from_evidence
    {p : Nat} [Fact (Nat.Prime p)] (P : FrobeniusEndomorphismEvidencePackage p)
    (E : FrobeniusEndomorphismEvidenceEvidence P) : FrobeniusEndomorphismEvidenceClosed P := by
  exact And.intro E.frobeniusAddClosed (And.intro E.frobeniusMulClosed E.frobeniusOneClosed)

end HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse