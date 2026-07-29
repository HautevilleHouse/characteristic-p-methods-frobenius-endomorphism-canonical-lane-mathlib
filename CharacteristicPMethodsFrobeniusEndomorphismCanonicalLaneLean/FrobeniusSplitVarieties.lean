import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusSplitVarietyPackage where
  baseScheme : Type u
  baseSchemeTopology : TopologicalSpace baseScheme
  frobeniusEndomorphism : FrobeniusEndomorphismPackage
  splitting : baseScheme → baseScheme
  splittingSection : Prop
  splittingCompatibleFrobenius : Prop
  splittingLocalGlobal : Prop

structure FrobeniusSplitVarietyEvidence (F : FrobeniusSplitVarietyPackage) where
  splittingSectionClosed : F.splittingSection
  splittingCompatibleFrobeniusClosed : F.splittingCompatibleFrobenius
  splittingLocalGlobalClosed : F.splittingLocalGlobal

def FrobeniusSplitVarietyClosed (F : FrobeniusSplitVarietyPackage) : Prop :=
  F.splittingSection ∧ F.splittingCompatibleFrobenius ∧ F.splittingLocalGlobal

theorem frobenius_split_variety_closed_from_evidence
    (F : FrobeniusSplitVarietyPackage) (E : FrobeniusSplitVarietyEvidence F) :
    FrobeniusSplitVarietyClosed F := by
  exact And.intro E.splittingSectionClosed
    (And.intro E.splittingCompatibleFrobeniusClosed E.splittingLocalGlobalClosed)

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse