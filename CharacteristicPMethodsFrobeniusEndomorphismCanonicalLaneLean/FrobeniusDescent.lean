import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusDescentPackage where
  baseScheme : Type u
  baseSchemeTopology : TopologicalSpace baseScheme
  frobeniusEndomorphism : FrobeniusEndomorphismPackage
  descentData : Type v
  descentDataCompatible : Prop
  descentEffective : Prop
  descentCoherence : Prop

structure FrobeniusDescentEvidence (F : FrobeniusDescentPackage) where
  descentDataCompatibleClosed : F.descentDataCompatible
  descentEffectiveClosed : F.descentEffective
  descentCoherenceClosed : F.descentCoherence

def FrobeniusDescentClosed (F : FrobeniusDescentPackage) : Prop :=
  F.descentDataCompatible ∧ F.descentEffective ∧ F.descentCoherence

theorem frobenius_descent_closed_from_evidence (F : FrobeniusDescentPackage)
    (E : FrobeniusDescentEvidence F) : FrobeniusDescentClosed F := by
  exact And.intro E.descentDataCompatibleClosed
    (And.intro E.descentEffectiveClosed E.descentCoherenceClosed)

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse