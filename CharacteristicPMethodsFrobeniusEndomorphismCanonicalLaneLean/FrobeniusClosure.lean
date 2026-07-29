import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusAdmittedObject where
  p : Nat
  prime : Fact (Nat.Prime p)
  field : Type u
  charP : CharP field p
  frobeniusEndo : field → field
  frobeniusEndoIsRingHom : RingHom (FrobeniusEndo : field → field)

structure FrobeniusAdmissibleClass (p : Nat) [Fact (Nat.Prime p)] where
  object : FrobeniusAdmittedObject
  frobeniusSurjective : Prop
  frobeniusInjective : Prop
  frobeniusPower : Nat
  frobeniusPowerPos : frobeniusPower > 0

structure FrobeniusEndgameState (p : Nat) [Fact (Nat.Prime p)] where
  object : FrobeniusAdmittedObject
  admissible : FrobeniusAdmissibleClass p

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.frobeniusEndoIsRingHom

theorem frobenius_witness_closed (O : FrobeniusAdmittedObject) : FrobeniusWitnessClosed O := by
  exact O.frobeniusEndoIsRingHom

end HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse