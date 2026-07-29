import characteristic-p-methods-frobenius-endomorphism-canonical-lane-lean.MathlibObjects

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure AdmissibleClass where
  object : FrobeniusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse
