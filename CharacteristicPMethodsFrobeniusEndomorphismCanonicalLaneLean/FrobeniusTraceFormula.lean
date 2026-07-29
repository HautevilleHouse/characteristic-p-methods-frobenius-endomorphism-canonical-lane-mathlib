import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean

structure FrobeniusTraceFormulaPackage {p : ℕ} [Fact p.Prime] where
  grothendieckOggShafarevich : Prop
  lefschetzTraceFormula : Prop
  weilII : Prop
  fermatHypersurfaceTrace : Prop
  eigenvalueBound : Prop
  riemannHypothesisPart : Prop

structure FrobeniusTraceFormulaEvidence {p : ℕ} [Fact p.Prime]
    (T : FrobeniusTraceFormulaPackage p) where
  grothendieckOggShafarevichClosed : T.grothendieckOggShafarevich
  lefschetzTraceFormulaClosed : T.lefschetzTraceFormula
  weilIIClosed : T.weilII
  fermatHypersurfaceTraceClosed : T.fermatHypersurfaceTrace
  eigenvalueBoundClosed : T.eigenvalueBound
  riemannHypothesisPartClosed : T.riemannHypothesisPart

def FrobeniusTraceFormulaClosed {p : ℕ} [Fact p.Prime]
    (T : FrobeniusTraceFormulaPackage p) : Prop :=
  T.grothendieckOggShafarevich ∧ T.lefschetzTraceFormula ∧ T.weilII ∧
  T.fermatHypersurfaceTrace ∧ T.eigenvalueBound ∧ T.riemannHypothesisPart

theorem frobenius_trace_formula_closed_from_evidence
    {p : ℕ} [Fact p.Prime] (T : FrobeniusTraceFormulaPackage p)
    (E : FrobeniusTraceFormulaEvidence T) : FrobeniusTraceFormulaClosed T := by
  exact And.intro E.grothendieckOggShafarevichClosed
    (And.intro E.lefschetzTraceFormulaClosed
      (And.intro E.weilIIClosed
        (And.intro E.fermatHypersurfaceTraceClosed
          (And.intro E.eigenvalueBoundClosed
            E.riemannHypothesisPartClosed))))

end CharacteristicPMethodsFrobeniusEndomorphismCanonicalLaneLean
end HautevilleHouse