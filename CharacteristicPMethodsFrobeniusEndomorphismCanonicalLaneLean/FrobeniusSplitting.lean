import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusSplittingPackage (F : FrobeniusEndomorphismPackage) where
  splitting : F.ring → F.ring
  splittingRetract : ∀ x : F.ring, splitting (F.frobeniusMap x) = x
  splittingIdempotent : ∀ x : F.ring, splitting (splitting x) = splitting x
  splittingLinear : ∀ x y : F.ring, splitting (x + y) = splitting x + splitting y

structure FrobeniusSplittingEvidence {F : FrobeniusEndomorphismPackage} (S : FrobeniusSplittingPackage F) where
  splittingRetractClosed : S.splittingRetract
  splittingIdempotentClosed : S.splittingIdempotent
  splittingLinearClosed : S.splittingLinear

def FrobeniusSplittingClosed {F : FrobeniusEndomorphismPackage} (S : FrobeniusSplittingPackage F) : Prop :=
  S.splittingRetract ∧ S.splittingIdempotent ∧ S.splittingLinear

theorem frobenius_splitting_closed_from_evidence {F : FrobeniusEndomorphismPackage} (S : FrobeniusSplittingPackage F) (E : FrobeniusSplittingEvidence S) : FrobeniusSplittingClosed S := by
  exact And.intro E.splittingRetractClosed (And.intro E.splittingIdempotentClosed E.splittingLinearClosed)

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse