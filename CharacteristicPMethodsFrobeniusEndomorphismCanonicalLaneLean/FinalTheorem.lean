import canonicalLaneMathlib.AdmissibleClass
import CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean.FrobeniusEndomorphism
import CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean.FrobeniusActionSheaves

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

def ConstrainedFrobeniusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_frobenius_endgame (A : AdmissibleClass) :
    ConstrainedFrobeniusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse