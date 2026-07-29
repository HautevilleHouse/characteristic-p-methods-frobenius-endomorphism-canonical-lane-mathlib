import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure CartierOperatorPackage where
  scheme : Type u
  structureSheaf : Type v
  frobeniusTwist : (scheme → scheme) → Prop
  cartierOperator : (scheme → scheme) → Prop
  cartierOperatorAction : Prop
  cartierOperatorFunctorial : Prop

structure CartierOperatorEvidence (C : CartierOperatorPackage) where
  cartierOperatorActionClosed : C.cartierOperatorAction
  cartierOperatorFunctorialClosed : C.cartierOperatorFunctorial

def CartierOperatorClosed (C : CartierOperatorPackage) : Prop :=
  C.cartierOperatorAction ∧ C.cartierOperatorFunctorial

theorem cartier_operator_closed_from_evidence (C : CartierOperatorPackage) (E : CartierOperatorEvidence C) : CartierOperatorClosed C := by
  exact And.intro E.cartierOperatorActionClosed E.cartierOperatorFunctorialClosed

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse