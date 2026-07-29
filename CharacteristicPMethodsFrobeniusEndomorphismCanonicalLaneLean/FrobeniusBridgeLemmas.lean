import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

def bridgeClosed (p : Nat) [Fact (Nat.Prime p)] (A : FrobeniusAdmissibleClass p) : Prop :=
  FrobeniusWitnessClosed A.object

theorem bridge_from_admissible_class (p : Nat) [Fact (Nat.Prime p)] (A : FrobeniusAdmissibleClass p) :
    bridgeClosed p A := by
  exact FrobeniusWitnessClosed A.object

end HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse