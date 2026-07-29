import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

def ConstrainedFrobeniusClosure (p : Nat) [Fact (Nat.Prime p)] (A : FrobeniusAdmissibleClass p) : Prop :=
  bridgeClosed p A ∧ gateClosed p A

theorem constrained_frobenius_endgame (p : Nat) [Fact (Nat.Prime p)] (A : FrobeniusAdmissibleClass p) :
    ConstrainedFrobeniusClosure p A := by
  exact And.intro (bridge_from_admissible_class p A) (gate_from_admissible_class p A)

end HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse