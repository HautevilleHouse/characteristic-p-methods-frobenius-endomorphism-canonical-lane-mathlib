import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusSheavesPackage {p : ℕ} [Fact p.Prime] where
  crystalOfDifferentialOperators : Prop
  stratifications : Prop
  isocrystals : Prop
  convergentIsocrystals : Prop
  arithmeticDModuleStructure : Prop

structure FrobeniusSheavesEvidence {p : ℕ} [Fact p.Prime]
    (S : FrobeniusSheavesPackage p) where
  crystalOfDifferentialOperatorsClosed : S.crystalOfDifferentialOperators
  stratificationsClosed : S.stratifications
  isocrystalsClosed : S.isocrystals
  convergentIsocrystalsClosed : S.convergentIsocrystals
  arithmeticDModuleStructureClosed : S.arithmeticDModuleStructure

def FrobeniusSheavesClosed {p : ℕ} [Fact p.Prime]
    (S : FrobeniusSheavesPackage p) : Prop :=
  S.crystalOfDifferentialOperators ∧ S.stratifications ∧
  S.isocrystals ∧ S.convergentIsocrystals ∧ S.arithmeticDModuleStructure

theorem frobenius_sheaves_closed_from_evidence
    {p : ℕ} [Fact p.Prime] (S : FrobeniusSheavesPackage p)
    (E : FrobeniusSheavesEvidence S) : FrobeniusSheavesClosed S := by
  exact And.intro E.crystalOfDifferentialOperatorsClosed
    (And.intro E.stratificationsClosed
      (And.intro E.isocrystalsClosed
        (And.intro E.convergentIsocrystalsClosed
          E.arithmeticDModuleStructureClosed)))

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse