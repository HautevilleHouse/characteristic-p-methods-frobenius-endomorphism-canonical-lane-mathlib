import CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.GroupPower.Basic

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FrobeniusSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FrobeniusAdmittedObject where
  space : FrobeniusSpace
  characteristicP : ℕ
  frobeniusEndomorphism : carrier → carrier
  frobeniusClosed : Prop
  conclusion : frobeniusClosed

structure FrobeniusEndgameState where
  object : FrobeniusAdmittedObject

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.frobeniusClosed

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse