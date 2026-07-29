import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

def gateClosed (p : Nat) [Fact (Nat.Prime p)] (A : FrobeniusAdmissibleClass p) : Prop :=
  A.frobeniusSurjective ∨ A.frobeniusInjective

theorem gate_from_admissible_class (p : Nat) [Fact (Nat.Prime p)] (A : FrobeniusAdmissibleClass p) :
    gateClosed p A := by
  exact Or.inl A.frobeniusSurjective

end HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse