import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusSheafCohomologyPackage where
  variety : Type u
  structureSheaf : Type v
  frobeniusActionOnCohomology : Prop
  cohomologyGroups : Type w
  frobeniusInducedMap : cohomologyGroups → cohomologyGroups
  frobeniusInducedMapLinear : ∀ x y : cohomologyGroups, frobeniusInducedMap (x + y) = frobeniusInducedMap x + frobeniusInducedMap y

structure FrobeniusSheafCohomologyEvidence (S : FrobeniusSheafCohomologyPackage) where
  frobeniusActionOnCohomologyClosed : S.frobeniusActionOnCohomology
  frobeniusInducedMapLinearClosed : S.frobeniusInducedMapLinear

def FrobeniusSheafCohomologyClosed (S : FrobeniusSheafCohomologyPackage) : Prop :=
  S.frobeniusActionOnCohomology ∧ S.frobeniusInducedMapLinear

theorem frobenius_sheaf_cohomology_closed_from_evidence (S : FrobeniusSheafCohomologyPackage) (E : FrobeniusSheafCohomologyEvidence S) : FrobeniusSheafCohomologyClosed S := by
  exact And.intro E.frobeniusActionOnCohomologyClosed E.frobeniusInducedMapLinearClosed

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse