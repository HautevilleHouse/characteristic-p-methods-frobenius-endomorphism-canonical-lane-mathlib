import canonicalLaneMathlib.AdmissibleClass
import CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean.FrobeniusEndomorphism

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

/-!
# Frobenius Action on Sheaves Package

This package captures the action of the Frobenius endomorphism on sheaves over a scheme.
-/

structure FrobeniusActionSheavesPackage {R : Type u} [CommSemiring R] {p : ℕ} [Fact (Nat.Prime p)]
    (F : FrobeniusEndomorphismPackage R p) (X : Type v) [TopologicalSpace X] where
  sheaf : Type w
  frobeniusPullback : sheaf → sheaf
  frobeniusPushforward : sheaf → sheaf
  pullbackPushforwardCompatibility : Prop
  pullbackPushforwardCompatibilityClosed : pullbackPushforwardCompatibility

structure FrobeniusActionSheavesEvidence {R : Type u} [CommSemiring R] {p : ℕ} [Fact (Nat.Prime p)]
    {F : FrobeniusEndomorphismPackage R p} {X : Type v} [TopologicalSpace X]
    (S : FrobeniusActionSheavesPackage F X) where
  pullbackPushforwardCompatibilityClosed : S.pullbackPushforwardCompatibility

def FrobeniusActionSheavesClosed {R : Type u} [CommSemiring R] {p : ℕ} [Fact (Nat.Prime p)]
    {F : FrobeniusEndomorphismPackage R p} {X : Type v} [TopologicalSpace X]
    (S : FrobeniusActionSheavesPackage F X) : Prop :=
  S.pullbackPushforwardCompatibility

theorem frobenius_action_sheaves_closed_from_evidence
    {R : Type u} [CommSemiring R] {p : ℕ} [Fact (Nat.Prime p)]
    {F : FrobeniusEndomorphismPackage R p} {X : Type v} [TopologicalSpace X]
    (S : FrobeniusActionSheavesPackage F X) (E : FrobeniusActionSheavesEvidence S) :
    FrobeniusActionSheavesClosed S := by
  exact E.pullbackPushforwardCompatibilityClosed

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse