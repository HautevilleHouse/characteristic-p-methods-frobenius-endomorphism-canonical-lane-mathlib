import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusFixedPointsPackage {p : ℕ} [Fact p.Prime] where
  fixedPointScheme : Prop
  steenbrinkVanishing : Prop
  hodgeSymmetry : Prop
  deligneIllusie : Prop
  akizukiNakano : Prop
  kodairaVanishing : Prop

structure FrobeniusFixedPointsEvidence {p : ℕ} [Fact p.Prime]
    (F : FrobeniusFixedPointsPackage p) where
  fixedPointSchemeClosed : F.fixedPointScheme
  steenbrinkVanishingClosed : F.steenbrinkVanishing
  hodgeSymmetryClosed : F.hodgeSymmetry
  deligneIllusieClosed : F.deligneIllusie
  akizukiNakanoClosed : F.akizukiNakano
  kodairaVanishingClosed : F.kodairaVanishing

def FrobeniusFixedPointsClosed {p : ℕ} [Fact p.Prime]
    (F : FrobeniusFixedPointsPackage p) : Prop :=
  F.fixedPointScheme ∧ F.steenbrinkVanishing ∧ F.hodgeSymmetry ∧
  F.deligneIllusie ∧ F.akizukiNakano ∧ F.kodairaVanishing

theorem frobenius_fixed_points_closed_from_evidence
    {p : ℕ} [Fact p.Prime] (F : FrobeniusFixedPointsPackage p)
    (E : FrobeniusFixedPointsEvidence F) : FrobeniusFixedPointsClosed F := by
  exact And.intro E.fixedPointSchemeClosed
    (And.intro E.steenbrinkVanishingClosed
      (And.intro E.hodgeSymmetryClosed
        (And.intro E.deligneIllusieClosed
          (And.intro E.akizukiNakanoClosed
            E.kodairaVanishingClosed))))

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse