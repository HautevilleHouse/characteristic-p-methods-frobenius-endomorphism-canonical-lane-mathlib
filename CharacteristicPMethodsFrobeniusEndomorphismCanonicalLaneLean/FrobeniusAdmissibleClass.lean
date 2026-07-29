import CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusAdmissibleClass where
  object : FrobeniusAdmittedObject
  frobeniusClosed : Prop
  remainderIdentified : Prop
  gateWitness : frobeniusClosed ∨ remainderIdentified

def admittedClosure (A : FrobeniusAdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object ∧ (A.frobeniusClosed ∨ A.remainderIdentified)

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse